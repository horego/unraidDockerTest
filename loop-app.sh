#!/usr/bin/env bash

for i in {1..100}
do
   echo "Welcome $i times" >> ${log_file}
   sleep 1
done
