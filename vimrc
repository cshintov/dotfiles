xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nmap G Gzz
nmap n nzz
nmap N Nzz

nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source<Space>$MYVIMRC<CR>

inoremap jj <Esc>	

set mouse=a
set foldmethod=manual

set nonu

set colorcolumn=81
set cursorline

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

" coc
" fzf
" ranger vs vfim (has vim keybindings)
" nerdtree ???? Probably later.
" startify
" Checkout alacrity - terminal emulator
" airline??? - statusline plugin + tmuxline
" sneak - move through search
" vim-which-key
" goyo and limelight
" dein/vim-plug package managers
" easymotion
" vim colors 
" screenkey for keycast * Not a vim plugin *
"
" Tmux
"
" Can program creating windows and panes
" Ruby gem: tmuxinator
" Vim plugin: vimx
"
"
" Install ctags for tag based jumping
" ^] for jumping to definitions of the tag
" g^] for ambiguous tags
" ^t for jumping back through the tags
"
" Vim QuickFix
" and Snippets
" Live preview of markdown files
