execute	pathogen#infect()

syntax enable "Syntax highlighting
filetype plugin on "Enable plugins (for netrw)

set nocompatible "No compatible for vi
set hidden "Allow switching buffer without writing to disk
set noswapfile "No swap files

set relativenumber "Relative line numbers
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
" Refresh vimrc
nnoremap <F5> :so $MYVIMRC<CR>
" Open dir tree of current dir
nnoremap <C-n> :25vs .<CR>  
" TagBar Toggle
nnoremap <F8> :TagbarToggle<CR>
" Replace <esc> with "jj"
inoremap jj <esc>
" Copy to both clipboard and primary selection 
vnoremap <C-c> "*y :let @+=@*<CR>
" Past from clipboard
noremap <C-p> "+P

"""""""""""""""
" Abbreviation
"""""""""""""""
" Open help in tab
:cabbrev h tab help
" Toggle relative number
:cabbrev tn set number relativenumber!

"""""""""""""""
" Auto command
"""""""""""""""
"Auto change dir with file
autocmd BufEnter * silent! lcd %:p:h 
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

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

""""""""""""""""""""""""
" File Browsing: netrw	
""""""""""""""""""""""""
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
