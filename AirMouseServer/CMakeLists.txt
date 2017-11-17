cmake_minimum_required(VERSION 3.8)
project(AirMouseServer)
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS "-std=c++11 -g -Wall -pthread")

set(SOURCE_FILES
        ByteBuffer.h
        DiscoveryServer.cpp
        DiscoveryServer.h
        KeepAliveMessage.h
        KeyDownMessage.h
        KeyUpMessage.h
        main.cpp
        Message.cpp
        Message.h
        MessageFactory.h
        MouseClickMessage.h
        MouseMoveMessage.h
        MouseScrollMessage.h
        TcpServer.cpp
        TcpServer.h
        TcpSocket.cpp
        TcpSocket.h
        VirtualInput.cpp
        VirtualInput.h)

add_executable(AirMouseServer ${SOURCE_FILES})