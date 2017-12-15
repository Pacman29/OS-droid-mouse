package ru.iu7.pacman29.airmouse;

import android.content.Context;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;

import java.io.IOException;
import java.io.OutputStream;
import java.net.*;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

import ru.iu7.pacman29.airmouse.messages.KeepAliveMessage;
import ru.iu7.pacman29.airmouse.messages.Message;

public class Server {
    private final static int TIMEOUT = 3000;
    private final static int PORT = 5550;
    private final static int GET_SERVERS_PORT = 5555;
    private final static int GET_SERVERS_TIMEOUT = 1000;

    private transient BlockingQueue<Message> messageQueue = new LinkedBlockingQueue<>();
    private transient MessagesRunnable messagesRunnable = new MessagesRunnable(this);

    private transient Socket socket;
    private String ip;
    private String name = "MouseServer";

    private ServerListener listener;

    public Server(String ip) {
        this.ip = ip;
    }

    public void setServerListener(ServerListener listener) {
        this.listener = listener;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public boolean isConnected() {
        return (socket != null && socket.isConnected());
    }

    public boolean connect() {
        if (!isConnected()) {

            try {
                socket = new Socket();
                socket.connect(new InetSocketAddress(InetAddress.getByName(ip), PORT), TIMEOUT);
                socket.setTcpNoDelay(true);
                socket.setSoTimeout(TIMEOUT);

                new Thread(messagesRunnable).start();
                if (listener != null) {
                    listener.onServerConnected(this);
                }
            } catch (ConnectException e) {
                socket = null;
            } catch (SocketException e) {
                socket = null;
            } catch (UnknownHostException e) {
                socket = null;
            } catch (IOException e) {
                socket = null;
            }
        }

        if (socket == null && listener != null) {
            listener.onServerConnectError(this);
        }

        return isConnected();
    }

    public void disconnect() {
        if (socket != null) {
            try {
                socket.close();
                socket = null;

                messagesRunnable.stopRunnable();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void sendMessage(Message message) {
        messageQueue.add(message);
    }

    public static void discover(Context context, DiscoveryCallback callback) {
        InetAddress broadcastAddress = null;

        WifiManager wifi = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
        DhcpInfo dhcpInfo = null;
        if (wifi != null) {
            dhcpInfo = wifi.getDhcpInfo();
        }
        if (dhcpInfo != null) {
            int broadcast = (dhcpInfo.ipAddress & dhcpInfo.netmask) | ~dhcpInfo.netmask;
            byte[] quads = new byte[4];
            for (int k = 0; k < 4; k++)
                quads[k] = (byte) ((broadcast >> k * 8) & 0xFF);
            try {
                broadcastAddress = InetAddress.getByAddress(quads);
            } catch (UnknownHostException e) {
            }
        }

        if (broadcastAddress != null) {
            try {
                DatagramSocket socket = new DatagramSocket(null);
                socket.setBroadcast(true);
                socket.setSoTimeout(GET_SERVERS_TIMEOUT);

                byte[] requestMessage = new byte[2];
                new Random().nextBytes(requestMessage);
                requestMessage[0] = 0x5;

                socket.send(new DatagramPacket(requestMessage, requestMessage.length, broadcastAddress, GET_SERVERS_PORT));

                while (true) {
                    DatagramPacket remoteAck = new DatagramPacket(new byte[27], 27);
                    socket.receive(remoteAck);

                    byte[] response = remoteAck.getData();
                    if (response[0] == requestMessage[0] && response[1] == requestMessage[1]) {
                        StringBuilder sb = new StringBuilder();
                        String ip = remoteAck.getAddress().toString().substring(1);
                        for (int i = 2; i < 27; i++) {
                            char c = (char) response[i];
                            if (c == 0) {
                                break;
                            }
                            sb.append(c);
                        }

                        Server server = new Server(ip);
                        if (sb.length() > 0) {
                            server.setName(sb.toString());
                        }

                        if (callback != null) {
                            callback.onServerDiscovered(server);
                        }
                    }
                }
            } catch (SocketTimeoutException e) {
            } catch (IOException e) {
            }
        }
    }

    public static List<Server> discover(Context context) {
        List<Server> servers = new LinkedList<>();

        discover(context, server -> servers.add(server));

        return servers;
    }

    @Override
    public boolean equals(Object other) {
        return (other instanceof Server && ((Server)other).getAddress().equals(getAddress()));
    }

    @Override
    public int hashCode() {
        return getAddress().hashCode();
    }

    public String getAddress() {
        return ip;
    }

    @Override
    public String toString() {
        return ip;
    }

    public class MessagesRunnable implements Runnable {
        private boolean shouldRun = true;
        private boolean isConnected = true;

        private final Server server;

        public MessagesRunnable(Server server) {
            this.server = server;
        }

        public void stopRunnable() {
            shouldRun = false;
            isConnected = false;
        }

        @Override
        public void run() {
            shouldRun = true;
            isConnected = true;

            while (shouldRun) {
                try {
                    OutputStream os = socket.getOutputStream();


                    while (shouldRun && isConnected) {
                        try {
                            Message toServer = messageQueue.poll(1, TimeUnit.SECONDS);
                            if (toServer != null) {
                                os.write(toServer.getHeader());
                                if (toServer.getBodyLength() > 0) {
                                    os.write(toServer.getBody());
                                }
                            } else {
                                server.sendMessage(new KeepAliveMessage());
                            }
                        } catch (InterruptedException e) {
                        } catch (SocketException e) {
                            isConnected = false;
                        }
                    }

                    if (listener != null) {
                        server.disconnect();
                        listener.onServerDisconnected(server);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public interface DiscoveryCallback {
        void onServerDiscovered(Server server);
    }

    public interface ServerListener {
        void onServerConnected(Server server);
        void onServerConnectError(Server server);
        void onServerDisconnected(Server server);
    }
}