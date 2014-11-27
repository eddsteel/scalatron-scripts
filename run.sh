#!/bin/sh
# Round: stage a round
#

BASE=$(pwd -P)

java -server -jar $BASE/bin/Scalatron.jar -x 100 -y 100 -steps 5000 -browser no -maxfps 1000 -maxslaves 50 -frameX max -frameY max $*
