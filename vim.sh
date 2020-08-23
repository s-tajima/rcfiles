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
	echo "\n${sig_vimrc}\n${source}\n" >> ${rcfile}
fi

vim +PlugInstall +qall


