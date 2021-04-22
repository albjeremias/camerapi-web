#!/bin/bash
cd frontend

python3 server.py &
./ui.sh &
./capture_folder.sh &
