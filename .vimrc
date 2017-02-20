set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle "sgur/ctrlp-extensions.vim"
Bundle 'EasyMotion'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'vimwiki'
Bundle 'haya14busa/incsearch.vim'
Bundle 'pangloss/vim-javascript'
Bundle "mxw/vim-jsx"
Bundle 'rking/ag.vim'
Bundle 'cespare/vim-sbd'
Bundle 'w0rp/ale'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'flazz/vim-colorschemes'
Bundle 'mattn/emmet-vim'
Bundle 'skywind3000/asyncrun.vim'
Bundle 'metakirby5/codi.vim'
Bundle "terryma/vim-smooth-scroll"
Bundle "airblade/vim-gitgutter"
Bundle "vim-scripts/matchit.zip"
Bundle "vim-scripts/AutoComplPop"

filetype plugin on                   " required!
filetype plugin indent on
colorscheme onedark 
se nostartofline

set nocompatible                " be iMproved
set fenc=utf-8
set wildignore+=*/node_modules/**
set wildignore+=*/tnpm/**
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5
set number
set relativenumber
set tabstop=2  
set shiftwidth=2  
set softtabstop=2  
set expandtab  
set smarttab
set sidescroll=10
set hlsearch
set ignorecase
set incsearch
set wrapscan
set nobackup
set guioptions-=r
set guioptions-=L
"set cursorline
set iskeyword +=-
set hidden
set autoindent
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set fdm=syntax
set ttimeoutlen=50
set foldlevel=99
set cursorline
set suffixesadd+=.js
set suffixesadd+=.jsx
set suffixesadd+=.css

set statusline+=%#warningmsg#
set statusline+=%*
set laststatus=2

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#tagbar#enabled = 0
let g:airline_theme='wobat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1 " splits and tab number
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#capslock#enabled = 0
let g:airline#extensions#windowswap#enabled = 0
let g:airline#extensions#obsession#enabled = 0
"let g:airline_section_c = '%t'
let g:airline_section_x = '花纶'

"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_auto_trigger = 1

let mapleader = ','
let g:ctrlp_map = '<D-p>'
let g:ctrlp_cmd ="CtrlP"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:ctrlp_working_path_mode = 0 
let NERDTreeWinPos=1

let g:ale_linters={'javascript': ['eslint']}
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_column_always = 1

nmap <D-o> :CtrlPFunky<CR>
nmap <D-y> :CtrlPYankring<CR>

nmap <D-1> <Plug>AirlineSelectTab1
nmap <D-2> <Plug>AirlineSelectTab2
nmap <D-3> <Plug>AirlineSelectTab3
nmap <D-4> <Plug>AirlineSelectTab4
nmap <D-5> <Plug>AirlineSelectTab5
nmap <D-6> <Plug>AirlineSelectTab6
nmap <D-7> <Plug>AirlineSelectTab7
nmap <D-8> <Plug>AirlineSelectTab8
nmap <D-9> <Plug>AirlineSelectTab9
nnoremap <D-w> :Sbd<CR>
nnoremap <Leader>d :VimwikiToggleListItem<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-=> <C-W>+
nnoremap <C--> <C-W>-
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Tab> <C-^>
"map <F1> :YcmCompleter GetDoc<CR>
nnoremap <F2> :Ag! <C-r><C-w> src<left><left><left><left>
nnoremap <Esc> :nohl<CR>
noremap <F7> :call asyncrun#quickfix_toggle(8)<cr>
nnoremap <F8> :%s/<C-r><C-w>//gcp<left><left><left><left>
map <F11> :NERDTreeToggle<CR>
"map <F12> :YcmCompleter GoTo<CR>
map <BS> <Leader><Leader>b
map <space> <Leader><Leader>w
map <C-p> <D-p><C-f>
map <F5> :AsyncRun 

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 15, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 15, 4)<CR>

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

augroup vimrc
  autocmd QuickFixCmdPost * botright copen 8
augroup END

"set vimdiff 
if &diff
    highlight! link DiffText MatchParen
else
  syntax on
endif
