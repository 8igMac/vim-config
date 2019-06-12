execute	pathogen#infect()

syntax enable "Syntax highlighting
filetype plugin on "Enable plugins (for netrw)

set nocompatible "No compatible for vi
set hidden "Allow switching buffer without writing to disk
set noswapfile "No swap files

set number relativenumber "Relative line numbers
set cursorline "Enable cursorline
set mouse=iv "Enable mouse scroll in visual and insert mode

"set hlsearch "Highlight search
"set incsearch "Make search like in the browser

set expandtab "Use space characters instead of tab
set tabstop=4 "4 space characters tab stop
set shiftwidth=4
set autoindent 

set bg=dark "Set background as dark
set t_Co=256 "Set number of color

""""""""""""""
" Color scheme
""""""""""""""
"color torte
"color dracula
"color dracula2
color molokai
"color colorsbox-faff
"color gruvbox


"""""""""""
" Hot keys
"""""""""""
" Toggle dir tree on the side pane
nnoremap <C-n> :Lexplore<CR>  
" TagBar Toggle
nnoremap <F8> :TagbarToggle<CR>
" Replace <esc> with "jj"
inoremap jj <esc>
" Copy to both clipboard and primary selection 
vnoremap <C-c> "*y :let @+=@*<CR>
" Past from clipboard
noremap <C-p> "+P
" Show buffers
nnoremap sb :buffers<CR>
" Toggle relative number
nnoremap tn :set number relativenumber!<CR>
" Execute visual block in py3
vnoremap <silent> <leader>[ :w ! python3<CR>
" Execute all in py3
nnoremap <silent> <leader>[[ :%w ! python3<CR>
" NerdTree, the file system explorer
nnoremap <C-n> :NERDTreeToggle<CR>

"""""""""""""""
" Abbreviation
"""""""""""""""
" Open help in tab
:cabbrev h tab help

"""""""""""""""
" Auto command
"""""""""""""""
"Auto change dir with file
autocmd BufEnter * silent! lcd %:p:h 
" Reload vimrc on every save to vimrc
autocmd BufWritePost vimrc so %
" Close vim when exit on only one window 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy file finder in subdir under root dir
""""""""""""""""""""""""""""""""""""""""""""
set path+=** "Search down into subfolders, use tab complete
set wildmenu "Display all matching files when tab complete

""""""""""""""
" Tag jumping
""""""""""""""
"Create the 'tags' file (need ctags)
command! MakeTags !ctags -R . 
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
