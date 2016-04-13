let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

"" Vundle setting
set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()
"" Vundle setting end

"" airline setting
" set uo powerline font symbols
let g:airline_powerline_fonts = 1
" display tabline
let g:airline#extensions#tabline#enabled = 1

"" general setting
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set cindent
set hlsearch
set cursorline
set rnu
set sm
set bg=dark
syntax on
:autocmd FileType make setlocal noexpandtab
filetype plugin on

"" C/C++ setting
inoremap "      ""<Left>
inoremap ""     "
inoremap {      {}<Left>
inoremap /*     /**/<Left><Left>
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>0
inoremap ((     (
inoremap ()     ()
inoremap {<CR>  {<CR>}<Esc>O
inoremap /*<CR> /*<CR><BS>*/<Esc>O
inoremap /**    /*
inoremap {{     {
inoremap {}     {}
inoremap <>     <><Left>
nnoremap \o o<ESC>o
nnoremap \p o<ESC>p
nnoremap \s xp
