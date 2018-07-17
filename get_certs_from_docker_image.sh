#!/bin/bash

IFS=$'\n'       # make newlines the only separator
set -f          # disable globbing
for i in $(cat < "$1"); do
  docker cp marathon-lb:$i certs/
done
