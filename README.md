# Vim Tips
## Cheatsheet
- @: repeat command
- history
    - q: view and pick command history
    - q/ view and pick searche history
- buy one get one free
    - C == c$
    - D == d$
    - A == $a
    - I 
    - S
    - o == a <CR>
    - O == k o
- resize height
    - :res +5/-5
    - :res 60
- resize width
    - :vert res +5
- fold
    - zf make fold
    - za fold toggle

## The Vim Language
[counts] [operation] [text object / motion]
- operations
    - c/d/y change/delete/yank
    - gu/gU make lowercase/uppercase
    - \>/< shift
    - ~ swap case
    - = indent
    - ! filter to external program
- text objects
    - aw/iw word
    - aW/iW WORD
    - ap/ip paragraph
    - ab/ib bracket
    - at/it tag
- motions
    - w/W
    - b/B
    - e/E
    - ]m begining of a method
    - f/F {char} next/prev occurence of char
    - t/T {char} till occurence of char
    - % go to first matching parent bracket
    - + go to first non-blank character of line

## Advance Navigation
- various motions
	- H, M, L cursor go high/middle/low
	- zz, zt, zb screen go middle/top/bottom
	- ^u/^d up/down a half page
    - ^y/^e up/down screen
    - ^b/^f up/down a page
- editing
    - :e {filename} edit a file
    - :fin {filename} find a file
    - gf go to file path under cursor
    - ctrl-^ previous file
- searches
    - * search forward for word under cursor
    - gd go to local declaration (first appearence)
    - /<CR> search for last used pattern
- marks
    - :marks show all the marks
    - mA make mark A
    - 'A go to mark A
- tags (require ctags)
    - :MakeTags make tags
    - ^] jump to tag under cursor
    - g^] for ambiguous tags
    - ^t jump back the tag stack
- jumplist and changelist
    - ^o/^i next/prev jump
    - g;/g, next/prev change

## Buffers, Windows, Tabs Management
### Buffer is for viewing most of the file
- see [Advance Navigation / editing]
- :buffers show all the buffer
- :bd NUMBER delete buffer
- :bn/:bp go to next/prev buffer
- :bufdo {cmd} exec cmd for all buffer

### Argment List
- :args list arguments
- :n go to next file in args
- :arga {filename} add file to args
- :vert sall vertically split all args

### Window
- ^wo only this window
- :vert sf FILE vertical split find file (san francisco!!)
- ^wx switch window focus
- :windo difft all windows do diff

### Tab for saving window configuration
- gt go to next tab
- gT go to prev tab
- {i}gt go to i-th tab
- :tabf FILE find file and open in new tab

## Terminal (vim8+)
- :ter open terminal
- :vert ter open verical termianl
- :ter ++rows=5 open terminal with 5 rows
- while you are in the terminal
    - ^w to enter any vim command
        - ex: if you open term in tab, ^wgt to navigate
    - ^wN enter terminal-normal mode (you can scroll with vim key)

## Auto Complete
- ^x^n for JUST this file
- ^x^f for filenames (work with our path tricks!)
- ^x^] for tags only
- ^n or tab for anything specified by the 'complete' option
- Use ^p and ^n/tab to go back and forth in the suggestion list

## Build-in Project Navigator: newtr
- :10Vexplore open current dir in left v-split 10 pixel
- <CR>/v/t to open in an h-split/v-split/tab
- p to preview and ^wz to close
- D to remove files or directories
- gh toggle hidden
- R rename file/dir
- check |netrw-browse-maps| for more mappings

## Vim gprep
- :vim /PATTERN/ % vim grep pattern in current file
- :vim /PATTERN/ ## in all args files
- :cn/:cp to navigate next/prev
- :cdo s/aaa/bbb/g change all grep
