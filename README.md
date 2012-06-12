iremotepipe
===========

![iremotepipe](https://raw.github.com/unconed/iremotepipe/master/iremotepipe.png)

A command-line tool for Mac OS X that interfaces with Apple Infrared remotes
and outputs all button presses.

Based on VLC's AppleRemote code, licensed under the GPL.

Intercepts all IR commands while running. Kill the process to stop listening.

output format
-------------

Button presses are printed as JSON objects, separated by a newline.

e.g. Pressing "play"

    {"type":"play","hold":false,"pressed":true}

e.g. Holding and releasing "right" (next)

    {"type":"right","hold":true,"pressed":true}
    {"type":"right","hold":true,"pressed":false}

Available keys are `play`, `up`, `down`, `left`, `right`, `menu` and `ok` (newer remotes only). Holding `play` will generate a `sleep` button press.


Steven Wittens - http://acko.net/
