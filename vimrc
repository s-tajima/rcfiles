syntax on
set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
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

nnoremap <C-n> :<C-u>set number!<CR>
nnoremap <C-p> :<C-u>set paste!<CR>

nnoremap <C-l>c :<C-u>tab LspCodeAction<CR>
nnoremap <C-l>d :<C-u>tab LspDefinition<CR>
nnoremap <C-l>p :<C-u>tab LspPeekDefinition<CR>
nnoremap <C-l>r :<C-u>tab LspReferences<CR>
nnoremap <C-l>n :<C-u>tab LspRename<CR>

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

  Plug 'hashivim/vim-terraform'

  Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
call plug#end()

autocmd BufWritePre <buffer> LspDocumentFormatSync

let g:lsp_diagnostics_echo_cursor = 1
