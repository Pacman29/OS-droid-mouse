package iu7.kurs.pacman29.mouse.messages;

import iu7.kurs.pacman29.mouse.Server;
import iu7.kurs.pacman29.mouse.view.TouchPadView;

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
