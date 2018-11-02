execute	pathogen#infect()

""""""""""""""
" Basic setup 
""""""""""""""
" File type detection
filetype plugin indent on

" Set syntax highlight on
syntax on

" Set relative number
set number relativenumber

" Set cursorline
set cursorline

" Set tabstop width to 4 space, and replace tab with space
set tabstop=4 shiftwidth=4 expandtab

" Let mouse usable in normal, visual, insert mode
set mouse=nvi

" Set extar line to the cursor when moving vertically with j/k
set so=8

" Hightlight search
set hlsearch

" Make search like in the brower
set incsearch


""""""""
" Color 
""""""""
" Set background as dark
set bg=dark

" Set number of color
set t_Co=256

" Set color scheme
"color torte
"color dracula
"color molokai
"color colorsbox-faff
color gruvbox


"""""""""""""""""""
" Nerd Tree Config 
"""""""""""""""""""
" Show on right side
let g:NERDTreeWinPos = "right"

" Close vim when exit on only one window 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""
" Hot keys
"""""""""""
" Open Nerd Tree
nnoremap <C-n> :NERDTreeToggle<CR>

" TagBar Toggle
nnoremap <F8> :TagbarToggle<CR>

" Replace <esc> with "jj"
inoremap jj <esc>

" Refresh vimrc
nnoremap <F5> :source $MYVIMRC<CR>

" Window navigation
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-i> <C-W>i
nnoremap <C-j> <C-W>j

" Scrolling
nnoremap J 5<C-e>M
nnoremap K 5<C-y>M

" Managing tab
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader><leader> :tabnext<cr>

" Open help in tab
:cabbrev h tab help

