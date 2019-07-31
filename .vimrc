set nocompatible
set laststatus=2
set number

set noswapfile
set pastetoggle=<F11>

set ttimeout		" time out for key codes
set ttimeoutlen=10	" wait up to 100ms after Esc for special key

set fileencodings=utf-8
set incsearch hlsearch
nnoremap <leader><space> :nohlsearch<CR>
set linebreak

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

highlight LineNr ctermfg=darkgrey
