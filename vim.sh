#!/bin/bash

curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sig_vimrc=`cat <<EOF
"""
" added by github.com/s-tajima/rcfiles
"""
EOF`

rcfile="$HOME/.vimrc"
source="source ~/rcfiles/vimrc"
if ! grep "${source}" ${rcfile} > /dev/null; then
	echo -e "\n${sig_vimrc}\n${source}\n" >> ${rcfile}
fi

vim -E -s +PlugInstall +visual +qall
