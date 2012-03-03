set nocompatible
"something
set visualbell

" pathogen
silent! call pathogen#runtime_append_all_bundles()

" colors
set t_Co=256
set background=dark
colorscheme twilight256

" syntax highlighting and filetype specific stuff
syntax on filetype on filetype plugin on
filetype indent on
filetype plugin on

set expandtab

set number
" autocmds
autocmd FileType python set expandtab tabstop=4 shiftwidth=4
autocmd FileType jade set expandtab tabstop=2 shiftwidth=2

set hidden " Allow hidden unsaved buffers
set laststatus=2 " Always show status line

" Menu Completion
set wildmenu
set wildmode=longest:list

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

set tabstop=4
set softtabstop=4
set shiftwidth=4

set showmatch " Parenthesis matching

set title " Set title

set directory=$HOME/.vim/tmp//,. "keep swap files in one location

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

vmap > >gv
vmap < <gv
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
inoremap <ESC> <NOP>

set ruler " Show ruler


nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" 80 character width plus highlighting boundary
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=darkgray

set backspace=eol,start,indent " Backspace config

let loaded_minibufexplorer = 1 " Disable MiniBufExplorer

" Jump between if's, HTML/XML tags, etc. with %
runtime macros/matchit.vim

let mapleader = "\\"

" Leader maps
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>s :set list! list?<CR>
nmap <Leader>n :set number! number?<CR>
nmap <Leader>h :set hlsearch! hlsearch?<CR>
nmap <Leader>k :bn<CR>
nmap <Leader>j :bp<CR>
nmap <Leader>o :b#<CR>
nmap <Leader>t :tabnew<Space>
inoremap <Leader>w <ESC>:w<CR>
inoremap <Leader>q :q<CR>


" FuzzyFinder 
nmap <Leader>f :FufFile<CR>
nmap <Leader>l :FufLine<CR>
nmap <Leader>b :FufBuffer<CR>

" vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = 'pdf'
