set nocompatible      " We're running Vim, not Vi!  
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
execute pathogen#infect()
syntax on
filetype plugin indent on
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" iset smarttab
set autoindent
set ignorecase
set smartcase
set ch=2
set vb
set backspace=2
" set hidden
set cpoptions=ces$
set lazyredraw
set showcmd
set showmode
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set clipboard=unnamedplus   " Copia do vim para o clipboard "
set autoread

set guioptions=ac
set history=1000
set scrolloff=8

set key=
set wildmenu
set showfulltag

set textwidth=0
" set fillchars=""
set fillchars=vert:\ ,stl:\ ,stlnc:\
set diffopt+=iwhite
set incsearch
set hlsearch
set ignorecase

vnoremap < <gv
vnoremap > >gv
set ruler

set guioptions-=T
map <C-t> :FufFile **/<CR>

set number

" better alternate mode
nnoremap <D-c> a
imap <D-c> <Esc>
set listchars=tab:▸\ ,eol:¬

let g:TailMinusF_Center_Win = 1
set stl=%f\ %h\ %m\ %r\ %{fugitive#statusline()}%=\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" NERD TREE MAP
noremap <leader>t :NERDTreeToggle<CR>
set hlsearch
let NERDTreeWinPos='left'
let NERDTreeWinSize=40

" Hidden characters
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

let mapleader = "\\"
let g:mapleader = "\\"

set diffopt=filler
set diffopt+=iwhite
vmap <Leader>a; :Tabularize /:<CR>gv
vmap <Leader>a= :Tabularize /=<CR>gv
vmap <Leader>at :Tabularize /\|<CR>gv
nmap <silent> <Leader>at :let a=winsaveview()<CR>ggVG:Tabularize /\|/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>a= :let a=winsaveview()<CR>ggVG:Tabularize /=/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>a; :let a=winsaveview()<CR>ggVG:Tabularize /:/<CR>:call winrestview(a)<CR><ESC>
nmap <silent> <Leader>h :call HexHighlight()<CR>

let g:jellybeans_termcolors=256
colorscheme jellybeans
set nowrap

set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails = 1

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-u>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabCompletionContexts = ['s:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =  ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabLongestEnhanced = 1
