#!/bin/bash

URL=https://www.primevideo.com
APPNAME="primevideo"
PARAMS="--hide-window-frame --inject primevideo.css --inject primevideo.js --widevine"
INTERNAL="https:\/\/www\.(amazon\.com\/ap\/signin|primevideo\.com)\/*"

#--disable-context-menu

# Windows, the browser is unsupported
#nativefier $URL --name $APPNAME $PARAMS --platform windows

# MacOS, not tested
#nativefier $URL --name $APPNAME $PARAMS --platform osx

# Linux
nativefier $URL --name $APPNAME $PARAMS --platform linux --verbose --internal-urls "$INTERNAL"
