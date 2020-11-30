" let mapleader = "\<Space>"
let mapleader = ","

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

let g:python3_host_prog = '/home/shinto/.pyenv/versions/neovim/bin/python3'

source $HOME/.config/nvim/plugs/coc.vim

call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' " to search from git root directory
Plug 'morhetz/gruvbox' " gruvbox theme

Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'jremmen/vim-ripgrep'

Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
"Plug 'liuchengxu/vim-which-key'

Plug 'honza/vim-snippets'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'Konfekt/FastFold'
Plug 'kalekundert/vim-coiled-snake'

" cheat.sh plugin
Plug 'dbeniamine/cheat.sh-vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'tomtom/tcomment_vim' " for commenting
" Plug 'tpope/vim-sensible' " for sensible defaults settings
" Plug 'tpope/vim-repeat'
" Plug 'kevinhwang91/rnvimr' " Ranger plugin for file navigation
call plug#end()

" hint based search
let g:sneak#streak = 0
let g:sneak#label = 1

nmap <leader>s <Plug>Sneak_s
xmap <leader>S <Plug>Sneak_S

" Statusline
set statusline=
set statusline+=\ %M " indicates file modifications
set statusline+=\ %y " type of file
set statusline+=\ %r " readonly
set statusline+=\ %F " fullpath to the file

set statusline+=%= " Everything after this appears on the right corner
set statusline+=\ %c:%l/%L " line, column, total number of lines
set statusline+=\ %p%% " percentage of current file
set statusline+=\ [%n] " display buffer number


" Execute python scripts
" inoremap  <ESC>:w<CR>:!python %<CR>
" nnoremap  :w<CR>:!python %<CR>
" Execute python scripts
inoremap  <ESC>:w<CR>:make<CR>:copen<CR>
nnoremap  <ESC>:w<CR>:make<CR>:copen<CR>

nnoremap <leader>co :copen<CR> " close quickfix
nnoremap <leader>cc :cclose<CR> " close quickfix

nnoremap <leader>ww :w<CR> " save file
nnoremap <leader>x :q!<CR> " quit, no save
nnoremap <leader>wq :wq<CR> " save and quit
nnoremap <leader>wqa :wqa<CR> " save, quit all
nnoremap <leader>qa :qa!<CR> " quit all, no save

nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>rl :source $MYVIMRC<CR>

" FastFold settings
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

xnoremap iz :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zv[z<cr>
xnoremap az :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zV[z<cr>

filetype plugin indent on

nnoremap <leader>. gt
nnoremap <leader>m gT
nnoremap <leader>tn :tabe 
imap jj <ESC>

set relativenumber
set nu
set nohlsearch
