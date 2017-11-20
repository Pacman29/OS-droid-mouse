package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;

public class KeyDownMessage extends Message {

    public KeyDownMessage() {
        super(Type.KEYDOWN, 1);
    }

    public KeyDownMessage(int keyCode) {
        super(Type.KEYDOWN, 1);
        setKeyCode(keyCode);
    }

    public void setKeyCode(int keyCode) {
        body[0] = (byte) keyCode;
    }

    @Override
    public void action(Server server) {}
}
