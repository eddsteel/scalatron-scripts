#!/bin/sh
# Place: put a bot into a round
#

die() {
    echo $* >&2
    usage
    exit 1
}

usage() {
    echo "$0 <bot> <round>"
}

test $# -eq 2 || die ""
    
BOT=$1
ROUND=$2
BASE=$(pwd -P)

test -d $BASE/all-bots/$BOT || die "can't find dir all-bots/$BOT"

echo "placing $BOT in round $ROUND"
mkdir -p $BASE/bots-round-$ROUND

ln -s $BASE/all-bots/$BOT $BASE/bots-round-$ROUND/$BOT
