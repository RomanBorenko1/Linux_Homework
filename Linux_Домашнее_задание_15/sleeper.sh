#!/bin/bash
for i in {1..10}
do
date +%T
sleep 4
done
ps -ef >/tmp/1.txt
head -n 1 /etc/os-release > /tmp/2.txt
head -n 1 /etc/os-release | grep -o 'Alpine' > /tmp/os_name_clean.txt
for x in {50..100}
do
touch /tmp/$x.txt
done
