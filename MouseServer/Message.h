

#ifndef MESSAGE_H
#define MESSAGE_H

#include <string>
#include <sstream>
#include <functional>
#include <iostream>
#include <vector>
#include <memory>

#include "VirtualInput.h"
#include "ByteBuffer.h"

typedef signed char jbyte;
typedef bb::ByteBuffer<jbyte> MessageBuffer;

namespace Message {
    class Message {
    public:
        enum class Type {
            KEEP_ALIVE, MOUSE_MOVE, MOUSE_CLICK, MOUSE_SCROLL, OTHER
        };

        Message(Message::Type type);
        Message(Message::Type type, int dataLength);

        Message::Type getType();
        int getLength();
        int getDataLength();

        MessageBuffer* getBuffer();

        std::string toString();

        virtual void action(VirtualInput& virtualInput); //this needs to be implemented by concrete Message classes

    protected:
        Message::Type type;
        MessageBuffer buffer;
        int dataOffset = 2;
    };   
}

#endif /* MESSAGE_H */

