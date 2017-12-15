package ru.iu7.pacman29.airmouse.messages;

import ru.iu7.pacman29.airmouse.Server;

public class MouseMoveMessage extends Message {

    public MouseMoveMessage() {
        super(Type.MOUSE_MOVE, 2);
    }

    public MouseMoveMessage(float dx, float dy) {
        super(Type.MOUSE_MOVE, 2);
        setDelta((byte)dx, (byte)dy);
    }

    public void setDelta(byte dx, byte dy) {
        body[0] = dx;
        body[1] = dy;
    }

    @Override
    public void action(Server server) {}
}
