#!/bin/bash

result=$(ps ax|grep -v grep|grep screenkey)
if [ "$result" == "" ]; then
  eval "screenkey --bg-color black --font-color white --font JetBrainsMono --opacity 0.4 -t 2 &"
else
  eval "killall screenkey"
fi
