#!/bin/sh
# Enter: add a bot to the competition
#
die() {
    echo $* >&2
    usage
    exit 1
}

usage() {
    echo "$0 <jar> <name>"
}

test $# -eq 2 || die "expected: two args"

BASE=$(pwd -P)
JAR=$1
NAME=$2

test -f $JAR || die "Can't find jar file $JAR"

echo "Entering $JAR as $NAME"

test -d $BASE/bots && mv $BASE/bots $BASE/reference-bot
mkdir -p $BASE/all-bots/$NAME
cp $JAR $BASE/all-bots/$NAME/ScalatronBot.jar




