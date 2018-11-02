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
$ git clone --depth=1 GIT_URL
```
2. Change directory name to `.vim`.
```
$ mv vim-config .vim
```
3. Get plugins.
```
$ git submodule update --init --recursive --depth=1
```
4. You're done, enjoy vim.

## Installed Plugins
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
Auto pairing for "()", "[]" etc.
- [nerdtree](https://github.com/scrooloose/nerdtree)
A file system explorer in vim.
- [syntastic](https://github.com/vim-syntastic/syntastic)
Check syntax error for you when you save the file. 
- [tagbar](https://github.com/majutsushi/tagbar)
Easy browsing tag in current file, and get an overview of
the file structure.
- [tcomment_vim](https://github.com/tomtom/tcomment_vim)
Comment multiple line with simple key-stroke.

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
