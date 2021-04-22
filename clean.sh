#!/bin/bash

sudo pkill -f server.py
sudo pkill -f http.server
sudo service nginx stop
sudo fuser -9 8080/tcp
sudo fuser -9 80/tcp
sudo fuser -9 8092/tcp
