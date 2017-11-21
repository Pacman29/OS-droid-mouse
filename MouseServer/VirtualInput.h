

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


#define EV_MOVE 0
#define EV_BTN_LEFT_PRESS 1
#define EV_BTN_LEFT_RELEASE 2
#define EV_BTN_RIGHT_PRESS 3
#define EV_BTN_RIGHT_RELEASE 4
#define EV_BTN_MIDDLE_PRESS 5
#define EV_BTN_MIDDLE_RELEASE 6
#define EV_SCROLL_HORIZ 7
#define EV_SCROLL_VERT 8

#define MOUSE_USLEEP_TIME 5000
#define MAXBUF 1024


class VirtualInput {
public:
    enum class Button { LEFT, RIGHT };
    
    VirtualInput();
    virtual ~VirtualInput();
    
    bool openDevice();
    void closeDevice();

    void move(int dy, int dx);
    void scroll(int val);
    void click(Button button);
    
    
private:
    int mouseFd;
    char *mouseFilePath;

    bool sendMouseEvent(const unsigned char type = 0, const int Xvalue = 0, const int Yvalue = 0);
};

#endif /* VIRTUALINPUT_H */

