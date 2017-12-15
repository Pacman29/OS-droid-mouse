package ru.iu7.pacman29.airmouse.messages;

import ru.iu7.pacman29.airmouse.Server;
import ru.iu7.pacman29.airmouse.view.TouchPadView;

public class MouseClickMessage extends Message {

    public MouseClickMessage() {
        super(Type.MOUSE_CLICK, 1);
    }

    public MouseClickMessage(TouchPadView.OnClickListener.Button button) {
        super(Type.MOUSE_CLICK, 1);
        body[0] = (byte) button.ordinal();
    }

    @Override
    public void action(Server server) {}
}
