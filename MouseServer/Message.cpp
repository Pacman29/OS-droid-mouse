

#include "Message.h"

namespace Message {
    Message::Message(Message::Type type, int dataLength) : type(type), buffer(dataOffset + dataLength) {
        buffer.put(static_cast<int>(type));
        buffer.put(dataOffset + dataLength);
    }

    Message::Type Message::getType() {
        return type;
    }

    int Message::getLength() {
        return buffer.get(1);
    }

    int Message::getDataLength() {
        return getLength() - dataOffset;
    }

    MessageBuffer* Message::getBuffer() {
        return &buffer;
    }

    void Message::action(VirtualInput& virtualInput) { }   
}