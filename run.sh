#!/bin/sh
# Round: stage a round
#

BASE=$(pwd -P)

java -jar $BASE/bin/Scalatron.jar -browser no -frameX max -frameY max $*
