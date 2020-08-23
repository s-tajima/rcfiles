syntax on
set nocompatible
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set backspace=indent,eol,start
set smartindent
"set wildmode=list:full
set wildmenu
set shell=/bin/bash\ -l\ -O\ expand_aliases
set virtualedit=block
set ignorecase
set smartcase
set title
set paste

"display statusline
function! GetStatusEx()
	let str = ''
	if &ft != ''
		let str = str . '[' . &ft . ']'
	endif
	if has('multi_byte')
		if &fenc != ''
			let str = str . '[' . &fenc . ']'
		elseif &enc != ''
			let str = str . '[' . &enc . ']'
		endif
	endif
	if &ff != ''
		let str = str . '[' . &ff . ']'
	endif
	return str
endfunction
set statusline=%<%f\ %m%r%h%w%=%{GetStatusEx()}\ \ %l,%c%V%8P
set laststatus=2

call plug#begin('~/.vim/plugged')
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()
