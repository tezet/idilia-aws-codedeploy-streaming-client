#!/usr/bin/env bash

wget --no-check-certificate -qO /dev/null 'https://localhost' || {
    echo "Webserver is down"
    exit 1
}
exit 0
