package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;

public class KeepAliveMessage extends Message {

    public KeepAliveMessage() {
        super(Type.KEEP_ALIVE, 0);
    }

    @Override
    public void action(Server server) {
        System.out.println("Keep alive from server: " + server);
    }
}
