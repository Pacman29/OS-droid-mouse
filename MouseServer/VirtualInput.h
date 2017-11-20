

#ifndef VIRTUALINPUT_H
#define VIRTUALINPUT_H

#include <stdexcept>
#include <cstring>

#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>
#include <fcntl.h>
#include <linux/input.h>
#include <linux/uinput.h>
#include <iostream>

typedef signed char jbyte;

class VirtualInput {
public:
    enum class Button { LEFT, RIGHT };
    
    VirtualInput();
    virtual ~VirtualInput();
    
    bool openDevice();
    void closeDevice();
    
    bool isOpen();
    void move(int dy, int dx);
    void scroll(int val);
    void click(Button button);
    
    void onKeyDown(jbyte key);
    void onKeyUp(jbyte key);
    
    
private:    
    bool _isOpen = false; 
    int fd;
    struct uinput_user_dev uidev;
    struct input_event ev[3];
};

#endif /* VIRTUALINPUT_H */

