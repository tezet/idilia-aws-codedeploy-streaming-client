#!/usr/bin/env bash

LOG_FILE=/var/log/node_httpd.log
HTTPD_USER=httpd
HTTPD_GROUP=httpd

# Create user if does not exist
if ! id -u $HTTPD_USER > /dev/null 2>&1; then
    echo "Creating user" $HTTPD_USER
    useradd -r $HTTPD_USER
fi

if [ ! -f $LOG_FILE ]; then
    touch $LOG_FILE
fi
chown $HTTPD_USER:$HTTPD_GROUP $LOG_FILE
