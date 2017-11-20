package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;

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
