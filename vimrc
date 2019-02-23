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
color colorsbox-faff
"color gruvbox


"""""""""""""""""""
" Nerd Tree Config 
"""""""""""""""""""
" Show on right side
let g:NERDTreeWinPos = "left"

" Close vim when exit on only one window 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""
" Tagbar Config 
"""""""""""""""""""
" Sort tag by order on default
let g:tagbar_sort = 0


"""""""""""""""""""
" CtrlP 
"""""""""""""""""""
" Hot key to start CtrlP 
let g:ctrlp_map = '<space>'
let g:ctrlp_cmd = 'CtrlPMixed'

" Ignore file
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


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
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" Scrolling
nnoremap J 5<C-e>5j
nnoremap K 5<C-y>5k

" Managing tab
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader><leader> :tabprevious<cr>
nnoremap <tab><tab> :tabnext<cr>

" Open help in tab
:cabbrev h tab help

" Copy to both clipboard and primary selection 
vnoremap <C-c> "*y :let @+=@*<CR>

" Past from clipboard
noremap <C-p> "+P
