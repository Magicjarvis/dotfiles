set nocompatible
"something
set visualbell
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Raimondi/delimitMate'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'Syntastic'
Bundle 'SuperTab'


" colors
set t_Co=256
set background=dark
colorschem ir_black

" syntax highlighting
syntax on
filetype indent on
filetype plugin on

set expandtab

set number " autocmds autocmd FileType python set expandtab tabstop=4 shiftwidth=4

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

set hidden " Allow hidden unsaved buffers
set laststatus=2 " Always show status line

set nowrap " don't wrap lines

" Menu Completion
set wildmenu
set wildmode=longest:list

set wildignore=*.swp,*.bak,*.pyc,*.class,*.out

set history=500 " Longer history

" Intelligent case searching
set ignorecase
set smartcase
set incsearch

" Invisible characters
set listchars=tab:>-,trail:-

" Intelligent indenting
set autoindent
set cindent

set tabstop=2
set softtabstop=2
set shiftwidth=2

set showmatch " Parenthesis matching

set title " Set title

set directory=$HOME/.vim/tmp//,. "keep swap files in one location

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

vmap > >gv
vmap < <gv


" dear god, no shift

" remove arrow keys
nmap <F2>;set paste! paste?<CR>
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

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

set ruler " Show ruler

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" 80 character width plus highlighting boundary
set textwidth=78
set colorcolumn=+1
hi ColorColumn ctermbg=grey

set backspace=eol,start,indent " Backspace config

let g:syntastic_cpp_compiler_options = ' -std=c++11 -pedantic -Wall -Werror -Weffc++ -Wextra -Wmain -Wshadow'

let loaded_minibufexplorer = 1 " Disable MiniBufExplorer

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
