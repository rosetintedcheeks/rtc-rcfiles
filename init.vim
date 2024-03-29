syntax on

imap jk <ESC>
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Remap code completion to Ctrl+Space {{{2
inoremap <Nul> <C-x><C-u>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

nnoremap <S-k> k.
nnoremap <S-j> j.

"nnoremap <silent> <leader>] :JavaSearch<CR>
"nnoremap <silent> <leader>[ :JavaCorrect<CR>
nnoremap <silent> <leader>m :call ToggleMouse()<CR>

nnoremap <silent> <leader>c :%y+<CR>


nnoremap <leader>r :r!

nnoremap <leader>t o- [ ] 

set mouse=a
let g:mouse_on = 1
function! ToggleMouse()
	if g:mouse_on
		setlocal mouse=
		let g:mouse_on = 0
	else
		setlocal mouse=a
		let g:mouse_on = 1
	endif
endfunction

let java_highlight_functions = 1
let java_highlight_all = 1

" Some more highlights, in addition to those suggested by cmcginty
"highlight link javaScopeDecl Statement
"highlight link javaType Type
"highlight link javaDocTags PreProc

set timeout ttimeoutlen=50


" NETRW
"let g:netrw_ftp_cmd="lftp"

set t_kb=
set nocompatible
set backspace=eol,indent,start
set autoindent
set smartindent
set nofixendofline

" don't highlight the last search upon startup
set viminfo="h"


" Do C-style auto indentation on C/C++/Perl files only :)
:filetype on
:autocmd FileType c,cpp,perl :set cindent

" stop Vim from beeping all the time
set novb
set noeb

set tabstop=4
set shiftwidth=4
set softtabstop=4
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
set smarttab

" spaces instead of a tab when tab is pressed
"set expandtab

set ruler
set background=dark

"Tell you if you are in insert mode
set showmode

"show cmd in status line
set showcmd

"match parenthesis, i.e. ) with (  and } with {
set showmatch

"ignore case when doing searches
set ignorecase
set smartcase

"tell you how many lines have been changed
set report=0

set scrolloff=5
set wildmode=longest,list
"set incsearch
"set hlsearch
set nohlsearch


set showtabline=2

set undofile
set undodir=~/.vim/undofiles

" Set the following lines in your ~/.vimrc or the systemwide /etc/vimrc:
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
 
" Also, this installs to /usr/share/vim/vimfiles, which may not be in
" your runtime path (RTP). Be sure to add it too, e.g:
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
"execute pathogen#infect()
"call pathogen#helptags()

"au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

let g:nnn#command = 'nnn -o'

colorscheme elflord
