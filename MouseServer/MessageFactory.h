

#ifndef MESSAGEFACTORY_H
#define MESSAGEFACTORY_H

#include "Message.h"
#include "MouseMoveMessage.h"
#include "MouseScrollMessage.h"
#include "MouseClickMessage.h"
#include "KeepAliveMessage.h"

#include <memory>
#include <iostream>

namespace Message {
    class MessageFactory {
    public:
        static std::unique_ptr<Message> makeMessage(Message::Type type, int dataLength) {
            if (type != Message::Type::OTHER) {
                return makeMessage(type);
            } else {
                return std::unique_ptr<Message>(new Message(Message::Type::OTHER, dataLength));
            }
        }

        static std::unique_ptr<Message> makeMessage(Message::Type type) {
            switch (type) {
                case Message::Type::MOUSE_MOVE: return std::unique_ptr<Message>(new MouseMoveMessage());
                case Message::Type::MOUSE_SCROLL: return std::unique_ptr<Message>(new MouseScrollMessage());
                case Message::Type::MOUSE_CLICK: return std::unique_ptr<Message>(new MouseClickMessage());
                case Message::Type::KEEP_ALIVE: return std::unique_ptr<Message>(new KeepAliveMessage());

                default:
                    throw std::runtime_error("Unknown type of message");

            }
        }
    };   
}

#endif /* MESSAGEFACTORY_H */

