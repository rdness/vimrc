"************************************************************************** VI Options
" Set line numbers
set number

" Sets cursor position at bottom right of screen
set ruler

" Shows matching braces when one is highlighted
set showmatch

" Ignores case when searching
set ignorecase

" If there is a capital letter, ignore ignorecase
set smartcase

" Turn on autoindent
set autoindent

" Highlight search results
set hlsearch

" Begin searching as soon as you start typing
set incsearch

" Turn syntax highlighting on
syntax on

" Sets tab == 4 spaces
set ts=4

"************************************************************************** VI Tweaks for cygwin

" Gets backspace key to work in cgywin
set bs=2

" Sets the cursor style
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"************************************************************************** VI Tweak

	" Creates autobackups
set backup

	" Stores backups in directory .vim/backup
set backupdir=~/.vim/backup

	" Stores swap files in .vim/tmps
set directory=~/.vim/tmps

"************************************************************************** Key Mapping

	"------ map f1 Key: Unusable due to help menu
map <F1> <ESC>

	"------ map f2 Key: Runs command accidentally
	"		typed in insert mode
map <F2> <ESC>u@. <CR>

	"------ map f3 Key: Runs macro mapped to a
map <F3> <ESC>@a

	"------ map f4 Key: Runs macro mapped to s
map <F4> <ESC>@s

	"------ map f5 Key: re-sources vimrc file
map <F5> <ESC>:so $MYVIMRC <CR>

	"------ map f6 Key: Pastes an item, then goes
	"		to insert mode
map <F6> <ESC>Pi

	"------ map f7 Key: Move to previous tab
map <F7> <ESC>:tabp <CR>

	"------ map f8 Key: Move to next tab
map <F8> <ESC>:tabn <CR>

	"------ map f9 Key: Clear search buffer
map <F9> <ESC>:let @/ = "" <CR>

	"------ map p  Key: Paste being concious of tabs
nore p ]p
nore P ]P

	"------ map ; Key: goto command with ;
nore ; :

	"------ map arrow keys to ignore wrapped text
inoremap <DOWN> <C-o>gj
inoremap <UP> <C-o>gk

"************************************************************************** Keyword Expansion

iab #d #define
iab #i #include

	"------ expand the commands to prototypes of cpp and c main files
inore #cpp		<ESC>:r ~/.vim/templates/cppMain.txt<CR> 
inore #cmain	<ESC>:r ~/.vim/templates/cMain.txt<CR>
inore #bash		<ESC>:r ~/.vim/templates/bash.txt<CR>
inore #perl		<ESC>:r ~/.vim/templates/perl.txt<CR>

"************************************************************************** Update Last Revision line

":s/^	Last Modified:.*/	Last Modified: \=strftime("%a %d %b %Y")/e
":%s/^	Last Modified:.*/	Last Modified: Mon 04 Aug 2014/e
":%s/Mon 04 Aug 2014/\=strftime("%a %d %b %Y")/e
