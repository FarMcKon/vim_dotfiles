
" if I want to customize more, See Also:
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set nocompatible

filetype off 			"force reloading *after* pathogen reloads
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on	" enable detection, plugins, and indenting at once
syntax on

"change the mapleader from \ to ,
let mapleader=","

" Editing behaviour {{{
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to
                                "    shiftwidth, not tabstop
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set virtualedit=all             " allow the cursor to go in to "invalid" places
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

set nolist                      " don't show invisible characters by default,
                                " but it is enabled for some file types (see later)
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)
"set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines
                                "    with 1-letter words (looks stupid)

set nrformats=                  " make <C-a> and <C-x> play well with
                                "    zero-padded numbers (i.e. don't consider
                                "    them octal or hex)
"}}} Editing  

" Toggle show/hide invisible chars
nnoremap <leader>i :set list!<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" Use standard perl regex for searches. not crazy vim regexes
" See http://stevelosh.com/blog/2010/09/coming-home-to-vim
nnoremap / /\v
vnoremap / /\v
set ignorecase                  " ignore case for searches by default
set smartcase                   " use case insensitivity if all chars lower-case
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set gdefault                    " search/replace "globally" (on a line) by default
nnoremap <leader><space> :noh<cr> 
" ^ clear out searches with ',<space>'

nnoremap <tab> %
vnoremap <tab> %
"make the tab key match bracket pairs. I use this to move around all the time and <tab> is a hell of a lot easier to type than %.

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=83
"vertical column to show where 85 chars is

" force hjkl navigation,  disables the arrow keys in insert mode to force you
" to get back into normail mode, 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" get rid of F1 help to avoid stupidity
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" make ; do the same as ':' to save keystrokes
nnoremap ; :

au FocusLost * :wa " save on losing focus

" ,w to strip all leading whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"/autocmd vimenter * NERDTree"
" NERDTree behavior
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
command Nt NERDTreeToggle 
nmap <silent> <leader>nt :NERDTreeToggle

",cp to add CtrlP shortcut
nmap <silent> <leader>cp :CtrlP

inoremap qq <ESC> 
" remap escape to qq to get out of insert mode faster

nnoremap <leader>w <C-w>w
nnoremap <leader>W <C-w>W

" Yank/paste to the OS clipboard with ,y and ,p
nnoremap <leader>y "+y
nnoremap <leader>Y "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
 
" if I want to customize more, See Also:
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
