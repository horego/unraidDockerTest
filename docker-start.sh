#!/usr/bin/env bash

touch "/tmp/debug.log"
tail -n0 -f "/tmp/debug.log" &

function shutdown_app(){
  echo "shutting down... (takes 5 sek)"
  sleep 5
  echo "shutting down completed"
  exit 0
}

trap shutdown_app SIGINT SIGKILL SIGTERM SIGQUIT

echo "Starting app"
loop-app.sh &

while true
do
  sleep 5
done
