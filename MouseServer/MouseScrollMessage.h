

#ifndef MOUSESCROLLMESSAGE_H
#define MOUSESCROLLMESSAGE_H

#include "Message.h"

namespace Message {
    class MouseScrollMessage : public Message {
    public:
        MouseScrollMessage() : Message(Message::Type::MOUSE_SCROLL, 1) { }
        void action(VirtualInput& mouse) {
            jbyte val = buffer.get(2);
            mouse.scroll(val);
        }
    };   
}

#endif /* MOUSESCROLLMESSAGE_H */

