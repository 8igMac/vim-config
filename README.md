Use vim like an IDE
===
This is my vim config file.

### Table of Content
- [How to Install](#how-to-install)
- [Installed Plugins](#installed-plugins)
- [Hotkeys](#hotkeys)
    - [Basic](#basic)
    - [Plugin Related](#plugin-related)
    - [Tab Related](#tab-related)
- [Color Scheme](#color-scheme)
    
## How to Install
1. Clone the repository to where you want to put the .vim directory.
```
$ git clone GIT_URL
```
2. Change directory name to `.vim`.
```
$ mv vim-config .vim
```
3. Get plugins.
```
$ git submodule update --init
```
4. You're done, enjoy vim.

## Installed Plugins
- [auto-pairs](https://github.com/jiangmiao/auto-pairs):
Auto pairing for "()", "[]" etc.
- [nerdtree](https://github.com/scrooloose/nerdtree):
A file system explorer in vim.
- [syntastic](https://github.com/vim-syntastic/syntastic):
Check syntax error for you when you save the file. 
- [tagbar](https://github.com/majutsushi/tagbar):
Easy browsing tag in current file, and get an overview of
the file structure.
- [tcomment_vim](https://github.com/tomtom/tcomment_vim):
Comment multiple line with simple key-stroke.
- [vim-autocomplpop](https://github.com/othree/vim-autocomplpop):
Auto-complete words that you're typing. 
(dependency: [vim-scripts/L9](https://github.com/vim-scripts/L9))
- [ctrlp](https://github.com/ctrlpvim/ctrlp.vim):
A fuzzy file finder
- [fugitive](https://github.com/tpope/vim-fugitive):
A git tool

## Hotkeys
### Basic
- `F5`: reload vimrc
- `jj`: alice for `esc`
- `Ctrl-l/h/i/j`: easy window navigation
- `J`: scroll down
- `K`: scroll up

### Plugin Related
- `Ctrl-n`: NerdTree toggle
- `F8`: Tagbar toggle
- `gc`: toggle comment (visual mode to select target)
- `Ctrl-p`: invoke fuzzy file finder

### Tab Related
- `\`+`tn`: new tab
- `\`+`to`: tab only (close other tab except current)
- `\`+`tc`: close current tab
- `\`+`tm`: move tab
- `\\`: next tag 

## Color Scheme
I pick several nice color schemes, you can select one you like in `vimrc` file.
Just uncomment the one you like and save&exit. 
> Use `F5` to see the changes.
