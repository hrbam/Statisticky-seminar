#!/usr/bin/env bash

[ -z "$1" ] && echo "Pass your it4i username as the first argument." && exit 1
user_name=$1
shift 1
[ -z "$1" ] && echo "Pass atleast one file to push to Karolina." && exit 1

scp "$@" "${user_name}@login1.karolina.it4i.cz:."