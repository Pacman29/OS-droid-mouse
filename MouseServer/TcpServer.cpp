

#include "TcpServer.h"

TcpServer::TcpServer(int port) {
    memset((char *) &server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(port);
}

TcpServer::~TcpServer() {
}

void TcpServer::onClientConnected(std::function<void(std::unique_ptr<TcpSocket>)> clientConnectedCallback) {
    this->clientConnectedCallback = clientConnectedCallback;
}

void TcpServer::start() {    
    server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket < 0) {
        throw std::runtime_error("Cannot create a socket");
    }
    
    if (bind(server_socket, (struct sockaddr *) &server_addr, sizeof(server_addr)) < 0) {
        throw std::runtime_error("Cannot bind the socket to the address");
    }
    
    listen(server_socket, 5);
    
    runningServer = true;
    
    while (true) {
        struct sockaddr_in client_addr;
        socklen_t client_len = sizeof(client_addr);
        
        int client_socket = accept(server_socket, (struct sockaddr *) &client_addr, &client_len);
        if (client_socket < 0) {
            throw std::runtime_error("Cannot accept client");
        }
        
        if (clientConnectedCallback) {
            clientConnectedCallback(std::unique_ptr<TcpSocket>(new TcpSocket(client_socket, client_addr)));
        }
    }
}

