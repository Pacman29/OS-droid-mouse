

#include "DiscoveryServer.h"
#include "TcpServer.h"
#include "TcpSocket.h"
#include "Message.h"
#include "VirtualInput.h"

#include <vector>
#include <iostream>
#include <functional>
#include <memory>

int main(int argc, char** argv) {
    DiscoveryServer discovery;
    discovery.start(DiscoveryServer::Type::ASYNC);
    
    VirtualInput input;
    input.openDevice();
    
    std::vector<std::unique_ptr<TcpSocket>> clients;
    
    TcpServer server;
    
    server.onClientConnected([&input, &clients](std::unique_ptr<TcpSocket> client) {
        std::cout << "Client connected: " << client->getAddress() << std::endl;
        
        client->onMessage([&input](TcpSocket* client, std::unique_ptr<Message::Message> message) {
            message->action(input);
        });
        
        client->start();
        
        //this prevents smart pointer going out of scope
        clients.push_back(std::move(client));
    });
    
    server.start();
    discovery.stop();
    
    //stop any client threads if still running
    clients.clear();
    
    input.closeDevice();
    
    return 0;
}

