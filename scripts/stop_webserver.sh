#!/usr/bin/env bash

PREFIX=/usr

ps -ef | grep "$PREFIX/share/janus/demos" | awk '{print $2}' | xargs kill -9

exit 0
