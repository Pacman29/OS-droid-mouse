
#ifndef KEEPALIVEMESSAGE_H
#define KEEPALIVEMESSAGE_H

#include "Message.h"

namespace Message {
    class KeepAliveMessage : public Message {
    public:
        KeepAliveMessage() : Message(Message::Type::KEEP_ALIVE, 0) { }
    };   
}

#endif /* KEEPALIVEMESSAGE_H */

