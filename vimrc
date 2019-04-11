execute	pathogen#infect()

" No compiatible for vi
set nocompatible

" Enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""
"" Fuzzy file finder in subdir under root dir
"""""""""""""""""""""""""""""""""""""""""""""
" Search down into subfolders. 
" Provide tab-completion for all file related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu
" NOW WE CAN:
" - hit the tab to :find by partial match (use * to make it fuzzy)
" - :b let you auto complete any open buffer

""""""""""""""""""""""""""""""""""""""""""""""
"" 		Tag jumping
""""""""""""""""""""""""""""""""""""""""""""""
" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
" 
" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags

""""""""""""""""""""""""""""""""""""""""""""""
"" 		Auto Complete	
""""""""""""""""""""""""""""""""""""""""""""""
" The good stuff in documented in |ins-completion|
"
" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (work with our path tricks!)
" - ^x^] for tags only
" - ^n or tab for anything specified by the 'complete' option
"
" NOW WE CAN:
" - Use ^p and ^n/tab to go back and forth in the suggestion list

""""""""""""""""""""""""""""""""""""""""""""""
"" 		   Snippets	
""""""""""""""""""""""""""""""""""""""""""""""
" load the html snippets and navigate the cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

""""""""""""""""""""""""""""""""""""""""""""""
"" 		   File Browsing: netrw	
""""""""""""""""""""""""""""""""""""""""""""""
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" Set relative number
set number relativenumber

" Set cursorline
set cursorline

" Set tabstop width to 4 space, and replace tab with space
set tabstop=4 shiftwidth=4 expandtab autoindent

" Let mouse usable in normal, visual, insert mode
set mouse=iv

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
"color dracula2
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
