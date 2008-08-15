#!/bin/sh
#
# compat32_dep_check: checks for the existence of compat32 ports given
# 		      the native one is installed
#
PORT="$1"
shift
while [ "$1" ]; do
    (prt-get isinst "$1" >& /dev/null &&
	prt-get isinst "$1-compat32" >& /dev/null) || FAIL="1"
    if [ "$FAIL" == "1" ]; then
	cat <<EOF
*** ERROR: Can not build $PORT
        Found $1, but not $1-compat32
        Please remove $1, or install $1-compat32
EOF
	exit 1
    fi
    shift
done
