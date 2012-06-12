/*****************************************************************************
 * iremotepipe.m: Listen for Apple Infrared remote commands, print them out.
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
#import <Cocoa/Cocoa.h>
#import "AppleRemote.h"
#import "AppleRemoteDelegate.h"

int main() {
    [NSAutoreleasePool new];
    [NSApplication sharedApplication];

    id remote = [[AppleRemote alloc] init];
    id delegate = [[AppleRemoteDelegate alloc] init];
    [remote setDelegate: delegate];
    [remote startListening: delegate];

    [NSApp run];
    return 0;
}
