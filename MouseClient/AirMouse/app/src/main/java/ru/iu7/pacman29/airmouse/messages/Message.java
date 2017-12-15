package ru.iu7.pacman29.airmouse.messages;

import java.util.Arrays;

import ru.iu7.pacman29.airmouse.Server;

public abstract class Message {
    public enum Type {
        KEEP_ALIVE, MOUSE_MOVE, MOUSE_CLICK, MOUSE_SCROLL, OTHER
    }
    protected byte[] header = new byte[2];
    protected byte[] body;

    protected Type type;

    public Message(Type type, int dataLength) {
        this.type = type;

        header[0] = (byte) type.ordinal();
        header[1] = (byte) (header.length + dataLength);

        if (dataLength > 0)
            body = new byte[dataLength];
    }

    public Type getType() { return type; }

    public byte[] getHeader() { return header; }

    public byte[] getBody() { return body; }
    public int getBodyLength() { return header[1] - header.length; }

    @Override
    public String toString() {
        return Arrays.toString(header) + (body == null ? "" : Arrays.toString(body));
    }

    public abstract void action(Server server);
}
