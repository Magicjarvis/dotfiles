set nocompatible
set visualbell
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Raimondi/delimitMate'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'rking/ag.vim'
Bundle 'Chun-Yang/vim-action-ag'

Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'Syntastic'
Bundle 'SuperTab'

call vundle#end()

" "Pull in matchit.vim, which is already bundled with Vim
" runtime! macros/matchit.vim " Jump between if's, HTML/XML tags, etc. with %


" colors
set t_Co=256
set background=dark
colorschem ir_black

" syntax highlighting
syntax on
filetype indent on
filetype plugin on

set number " autocmds autocmd FileType python set expandtab tabstop=4 shiftwidth=4

set autoread                    " Reload files changed outside vim
set shellpipe=2>/dev/null> 		"Don't dump distracting text to terminal during searches!
"set re=1                        "Use a non-broken regex engine for syntax highlighting

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

set hidden " Allow hidden unsaved buffers
set laststatus=2 " Always show status line

set nowrap " don't wrap lines

" Menu Completion
"set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.swp,*.bak,*.pyc,*.class,*.out,*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*

set undofile
set history=1000 " Longer history

" Intelligent case searching
set ignorecase
set smartcase
set incsearch

" Invisible characters
set listchars=tab:>-,trail:-

" Intelligent indenting
set autoindent
set nosmartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set noshowmatch " Parenthesis matching

set title " Set title

set dir=$HOME/.vim/tmp//,. "keep swap files in one location
set backupdir=$HOME/.vim/tmp//,. "keep swap files in one location

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

vmap > >gv
vmap < <gv
" figure out how to get this to work
" vmap \ y:CtrlP<CR><C-\>c

" remove arrow keys
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap jj <ESC>
inoremap kk <ESC>

set ruler " Show ruler

" Restore window size
nnoremap <C-0> - :exe "resize " . (winheight(0))<CR>


" 120 character width plus highlighting boundary
set textwidth=118
set colorcolumn=+1
hi ColorColumn ctermbg=grey

set backspace=eol,start,indent " Backspace config

let g:ctrlp_user_command = 'ag %s -i --nocolor --ignore .git  --ignore .svn  --ignore .hg  --ignore .DS_Store  --ignore "static"  --ignore "**/*.pyc"  -g ""'

let g:syntastic_cpp_compiler_options = ' -std=c++11 -pedantic -Wall -Werror -Weffc++ -Wextra -Wmain -Wshadow'

" Jump between if's, HTML/XML tags, etc. with %
runtime macros/matchit.vim

let mapleader = ";"

" Leader maps
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :quitall<CR>
nmap <Leader>s :set list! list?<CR>
nmap <Leader>n :set number! number?<CR>
nmap <Leader>h :set hlsearch! hlsearch?<CR>
nmap <Leader>k :bn<CR>
nmap <Leader>d :bd<CR>
nmap <Leader>j :bp<CR>
nmap <Leader>o :b#<CR>
nmap <Leader>t :tabnew<Space>
nmap <Leader>m :make<CR><CR><CR>
inoremap <Leader>w <ESC>:w<CR>
inoremap <Leader>q :q<CR>

" vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:syntastic_mode_map = { 'passive_filetypes': ['html', 'python'] }

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set pastetoggle=<leader>p
