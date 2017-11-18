/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   VirtualInput.cpp
 * Author: kubatek94
 * 
 * Created on 17 March 2016, 13:29
 */

#include "VirtualInput.h"

VirtualInput::VirtualInput() {
    memset(&uidev, 0, sizeof(uidev));
    snprintf(uidev.name, UINPUT_MAX_NAME_SIZE, "virtual-input");
    uidev.id.bustype = BUS_USB;
    uidev.id.vendor  = 0x1;
    uidev.id.product = 0x1;
    uidev.id.version = 1;
}

VirtualInput::~VirtualInput() {
    closeDevice();
}

bool VirtualInput::openDevice() {
    fd = open("/dev/uinput", O_WRONLY | O_NONBLOCK);
    if (fd < 0) {
        return false;
    }

    ioctl(fd, UI_SET_EVBIT, EV_KEY);
    
    ioctl(fd, UI_SET_EVBIT, EV_REL);
    ioctl(fd, UI_SET_EVBIT, EV_SYN);

    ioctl(fd, UI_SET_RELBIT, REL_X);
    ioctl(fd, UI_SET_RELBIT, REL_Y);
    ioctl(fd, UI_SET_RELBIT, REL_WHEEL);

    ioctl(fd, UI_SET_KEYBIT, BTN_LEFT);
    ioctl(fd, UI_SET_KEYBIT, BTN_RIGHT);
    ioctl(fd, UI_SET_KEYBIT, BTN_MIDDLE);

    if(write(fd, &uidev, sizeof(uidev)) < 0) {
        return false;
    }

    if(ioctl(fd, UI_DEV_CREATE) < 0) {
        return false;
    }
    
    _isOpen = true;
    return _isOpen;
}

void VirtualInput::closeDevice() {
    if (_isOpen) {
        ioctl(fd, UI_DEV_DESTROY);
        close(fd);
        
        _isOpen = false;
    }
}

bool VirtualInput::isOpen() {
    return _isOpen;
}

void VirtualInput::move(int dy, int dx) {
    memset(ev, 0, sizeof(ev));
    
    ev[0].type = EV_REL;
    ev[0].code = REL_Y;
    ev[0].value = dy;

    ev[1].type = EV_REL;
    ev[1].code = REL_X;
    ev[1].value = dx;
        
    ev[2].type = EV_SYN;
    ev[2].code = SYN_REPORT;
    ev[2].value = 0;
    
    if(write(fd, &ev, sizeof(ev)) < 0)
        throw std::runtime_error("Cannot move mouse");
}

void VirtualInput::scroll(int val) {
    memset(ev, 0, sizeof(ev));
    
    ev[0].type = EV_REL;
    ev[0].code = REL_WHEEL;
    ev[0].value = val;

    ev[1].type = EV_SYN;
    ev[1].code = SYN_REPORT;
    ev[1].value = 0;
    
    if(write(fd, &ev, sizeof(struct input_event) * 2) < 0)
        throw std::runtime_error("Cannot scroll mouse");
}

void VirtualInput::click(Button button) {
    memset(ev, 0, sizeof(ev));
    
    ev[0].type = EV_KEY;
    ev[0].code = (button == Button::LEFT) ? BTN_LEFT : BTN_RIGHT;
    ev[0].value = 1;
    
    ev[1].type = EV_KEY;
    ev[1].code = (button == Button::LEFT) ? BTN_LEFT : BTN_RIGHT;
    ev[1].value = 0;
    
    ev[2].type = EV_SYN;
    ev[2].code = SYN_REPORT;
    ev[2].value = 0;
    
    if(write(fd, &ev, sizeof(ev)) < 0)
        throw std::runtime_error("Cannot click mouse");
}

void VirtualInput::onKeyDown(jbyte key) {
    memset(ev, 0, sizeof(ev));
    
    ev[0].type = EV_KEY;
    ev[0].code = key;
    ev[0].value = 1;
    
    ev[1].type = EV_SYN;
    ev[1].code = SYN_REPORT;
    ev[1].value = 0;
    
    if(write(fd, &ev, sizeof(struct input_event) * 2) < 0)
        throw std::runtime_error("Cannot press down a key");
}

void VirtualInput::onKeyUp(jbyte key) {
    memset(ev, 0, sizeof(ev));
    
    ev[0].type = EV_KEY;
    ev[0].code = key;
    ev[0].value = 0;
    
    ev[1].type = EV_SYN;
    ev[1].code = SYN_REPORT;
    ev[1].value = 0;
    
    if(write(fd, &ev, sizeof(struct input_event) * 2) < 0)
        throw std::runtime_error("Cannot release a key");
}
