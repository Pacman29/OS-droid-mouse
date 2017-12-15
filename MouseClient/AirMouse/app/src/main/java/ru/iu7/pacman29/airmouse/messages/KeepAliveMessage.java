package ru.iu7.pacman29.airmouse.messages;

import ru.iu7.pacman29.airmouse.Server;

public class KeepAliveMessage extends Message {

    public KeepAliveMessage() {
        super(Type.KEEP_ALIVE, 0);
    }

    @Override
    public void action(Server server) {
        System.out.println("Keep alive from server: " + server);
    }
}
