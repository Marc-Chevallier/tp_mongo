#!/bin/bash
cd
mkdir -p MongoDB/var/log/mongodb
mkdir -p MongoDB/var/lib/mongodb
touch MongoDB/var/log/mongodb/mongodb.log

cat > mongodb.conf << FIN
dbpath=$HOME/MongoDB/var/lib/mongodb
logpath=$HOME/MongoDB/var/log/mongodb/mongodb.log
logappend=true
bind_ip = 127.0.0.1
FIN
mongod -f mongodb.conf &