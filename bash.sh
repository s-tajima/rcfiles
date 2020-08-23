#!/bin/sh

sig=`cat <<EOF
###
# added by github.com/s-tajima/rcfiles
###
EOF`

rcfile="$HOME/.bashrc"
source="source ~/rcfiles/bashrc"
if ! grep "${source}" ${rcfile} > /dev/null; then
	echo "\n${sig}\n${source}\n" >> ${rcfile}
fi
