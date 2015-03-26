#!/bin/sh

eval `ssh-agent -s` > /dev/null 2>&1

for key in `ls /ssh/*_rsa`
do
  ssh-add ${key} > /dev/null 2>&1
done

exec "$@"
