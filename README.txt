iremotepipe
===========

A command-line tool that interfaces with Apple Infrared remotes and
outputs all button presses.

Based on VLC's AppleRemote code, licensed under the GPL.

Intercepts all IR commands while running. Kill the process to stop listening.


output format
=============

Button presses are printed as JSON objects, separated by a zero byte.

e.g. Pressing "play"
{"type":"play","hold":false,"pressed":true}

e.g. Holding and releasing "right" (next)
{"type":"right","hold":true,"pressed":true}
{"type":"right","hold":true,"pressed":false}

Available keys are "play", "up", "down", "left", "right", "menu" and "ok" (aluminum remotes only). Holding "play" will be sent as the "sleep" key.
