

#include <sys/stat.h>
#include "VirtualInput.h"

VirtualInput::VirtualInput() {
    mouseFd = 0;
    mouseFilePath = "/dev/avms";
}

VirtualInput::~VirtualInput() {
    closeDevice();
}

bool VirtualInput::openDevice() {
    struct stat st;
    if ( stat(mouseFilePath, &st) != 0 ) {
        dev_t dev = makedev(60, 0);
        if ( mknod(mouseFilePath, S_IFCHR | S_IWUSR, dev) == -1 ) {
            return false;
        }
    }

    if ( (mouseFd = open(mouseFilePath, O_WRONLY)) == -1 ) {
        return false;
    }
    return true;
}

void VirtualInput::closeDevice() {
    if (mouseFd != 0 && mouseFd != -1) {
        if ( close(mouseFd) != 0 ) {
        }
    }
}


bool VirtualInput::sendMouseEvent(const unsigned char type, const int Xvalue, const int Yvalue){
    char * writeBuffer = (char *)::operator new(sizeof(char)+2*sizeof(int));
    memcpy(writeBuffer,&type,sizeof(char));
    memcpy(writeBuffer+sizeof(char),&Xvalue,sizeof(int));
    memcpy(writeBuffer+sizeof(char)+sizeof(int),&Yvalue,sizeof(int));
    if ( write(mouseFd,writeBuffer,sizeof(char)+2*sizeof(int)) != (sizeof(char)+2*sizeof(int)) ) {
        delete writeBuffer;
        return false;
    }
    delete writeBuffer;
    return true;
}

void VirtualInput::move(int dy, int dx) {
    if (!sendMouseEvent(EV_MOVE,dx,dy)){}
}

void VirtualInput::scroll(int val) {
    if (!sendMouseEvent(EV_SCROLL_VERT,val)){}
}

void VirtualInput::click(Button button) {
    switch (button){
        case Button::LEFT: {
            sendMouseEvent(EV_BTN_LEFT_PRESS);
            sendMouseEvent(EV_BTN_LEFT_RELEASE);
            break;
        }
        case Button::RIGHT: {
            sendMouseEvent(EV_BTN_RIGHT_PRESS);
            sendMouseEvent(EV_BTN_RIGHT_RELEASE);
            break;
        }
    }
}
