package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;

public class KeyUpMessage extends Message {

    public KeyUpMessage() {
        super(Type.KEYUP, 1);
    }

    public KeyUpMessage(int keyCode) {
        super(Type.KEYUP, 1);
        setKeyCode(keyCode);
    }

    public void setKeyCode(int keyCode) {
        body[0] = (byte) keyCode;
    }

    @Override
    public void action(Server server) {}
}