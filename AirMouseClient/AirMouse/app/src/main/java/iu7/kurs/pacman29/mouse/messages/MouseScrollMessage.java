package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;

public class MouseScrollMessage extends Message {

    public MouseScrollMessage() {
        super(Type.MOUSE_SCROLL, 1);
    }

    public MouseScrollMessage(float value) {
        super(Type.MOUSE_SCROLL, 1);
        setValue(value);
    }

    public void setValue(float value) {
        body[0] = (byte) value;
    }

    @Override
    public void action(Server server) {}
}
