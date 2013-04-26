iremotepipe
===========

![iremotepipe](https://raw.github.com/unconed/iremotepipe/master/iremotepipe.png)

A command-line tool for Mac OS X that interfaces with Apple Infrared remotes
and outputs all button presses. Intercepts all IR commands while running. Kill the process to stop listening.

Also includes a simple node.js based server (iremote.js) which serves the detected events on a WebSocket.

Based on VLC's AppleRemote code, licensed under the GPL.

output format
-------------

Button presses are printed as JSON objects, separated by a newline.

e.g. Pressing "play"

    {"type":"play","hold":false,"pressed":true}

e.g. Holding and releasing "right" (next)

    {"type":"right","hold":true,"pressed":true}
    {"type":"right","hold":true,"pressed":false}

Available keys are `play`, `up`, `down`, `left`, `right`, `menu` and `ok` (newer remotes only). Holding `play` will generate a `sleep` button press.


websocket control
------

You can receive commands over a WebSocket as JSON packets. For example, to control a Deck.js slideshow:

```javascript
    var host = window.document.location.host.replace(/:.*/, '');
    var ws = new WebSocket('ws://' + host + ':8080');
    ws.onmessage = function (event) {
      var data = JSON.parse(event.data);
      var command = {
          up:    'prev',
          left:  'prev',
          right: 'next',
          down:  'next',
          play:  'next',
        }[data.type];

      if (command) {
        $.deck(command);
      }
    };
```


Steven Wittens - http://acko.net/
