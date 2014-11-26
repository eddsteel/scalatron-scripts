#!/bin/sh
# Round: stage a round
#

die() {
    echo $* >&2
    usage
    exit 1
}

usage() {
    echo "$0 <round>"
}

test $# -eq 1 || die ""

ROUND=$1
BASE=$(pwd -P)

test -d "$BASE/bots-round-$ROUND" || die "no such dir $BASE/bots-round-$ROUND"

echo "ROUND $ROUND"
rm -f $BASE/bots
ln -s $BASE/bots-round-$ROUND $BASE/bots

echo
ls $BASE/bots

