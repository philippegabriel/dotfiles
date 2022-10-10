colorscheme industry
set background=dark
set number
set laststatus=2
set statusline=%F
syntax on
filetype indent plugin on
" 
" This section from: https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Enhancing_Vim
" 
"Set tabs to 4 spaces
"set tabstop=4
"set shiftwidth=4
"set expandtab
""Highlight Tabs
:syntax match Special "\t"
"Highlight Space errors
":syntax match Error "\s\+$"
""Highlight Tab errors
:syntax match Error " \+\t"me=e-1
"
"This section from: https://missing.csail.mit.edu/2020/files/vimrc
"
" Disable the default Vim startup message.
set shortmess+=I
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start
" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=
" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a
"
"This section from https://github.com/preservim/nerdtree
"
nnoremap [ :NERDTreeToggle<CR>
nnoremap ] :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
set backspace=indent,eol,start
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
