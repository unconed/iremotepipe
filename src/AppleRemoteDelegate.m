/*****************************************************************************
 * AppleRemoteDelegate.m: Print remote commands
 *****************************************************************************
 * Copyright (C) 2012 Steven Wittens
 * $Id: cc0d504301101cdd6f7630450c9303e88bfc6c57 $
 *
 * Authors: Steven Wittens <steven -at- acko.net>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * *****************************************************************************/
#import "AppleRemoteDelegate.h"

@implementation AppleRemoteDelegate

- (void) appleRemoteButton: (AppleRemoteEventIdentifier)buttonIdentifier pressedDown: (BOOL) pressedDown clickCount: (unsigned int) count {

    char* True = "true";
    char* False = "false";
    char* buttonName;
    bool hold = false;
    
    switch (buttonIdentifier) {
        case k2009RemoteButtonFullscreen:
            buttonName = "ok";
            break;

        case k2009RemoteButtonPlay:
        case kRemoteButtonPlay:
            buttonName = "play";
            break;

        case kRemoteButtonVolume_Plus_Hold:
            hold = true;
        case kRemoteButtonVolume_Plus:
            buttonName = "up";
            break;

        case kRemoteButtonVolume_Minus_Hold:
            hold = true;
        case kRemoteButtonVolume_Minus:
            buttonName = "down";
            break;

        case kRemoteButtonLeft_Hold:
            hold = true;
        case kRemoteButtonLeft:
            buttonName = "left";
            break;

        case kRemoteButtonRight_Hold:
            hold = true;
        case kRemoteButtonRight:
            buttonName = "right";
            break;

        case kRemoteButtonMenu_Hold:
            hold = true;
        case kRemoteButtonMenu:
            buttonName = "menu";
            break;

        case kRemoteButtonPlay_Sleep:
            buttonName = "sleep";
            break;

        default:
            buttonName = "unknown";
            break;
    }
    
    printf("{\"type\":\"%s\",\"hold\":%s,\"pressed\":%s}\n",
        buttonName, hold ? True : False, pressedDown ? True : False);
}

@end
