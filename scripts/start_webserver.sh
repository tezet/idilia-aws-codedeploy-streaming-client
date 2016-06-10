#!/usr/bin/env bash

PREFIX=/usr
LOG_FILE=/var/log/node_httpd.log

ps -ef | grep "$PREFIX/share/janus/demos" | awk '{print $2}' | xargs kill -9

/usr/local/bin/hs $PREFIX/share/janus/demos --ssl -p 443 -K $PREFIX/share/janus/certs/janus.key -C $PREFIX/share/janus/certs/janus.pem >> $LOG_FILE 2>&1

exit 0
