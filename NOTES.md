# VIM

## Easy Motion

```
\\w: easy motion down
\\f<character>: search for specific character 
```


## Surround

https://towardsdatascience.com/how-i-learned-to-enjoy-vim-e310e53e8d56

```
yss: surround entire line
ysiw: surround entire word
ds<character>: delete surround character
dst: delete surrounding tag
cs<old><new>: change surround old character with new character
cst: change surrounding tag
```

## Surround with Emmit

Highlight lines you want to wrap -> shift + command + p -> “Emmit: Wrap with abbreviation” -> tag name

## Auto Closing Tags

I turn off closing auto closing tags for all languages

https://stackoverflow.com/questions/49391798/vs-code-turn-off-auto-close-tags-but-leave-on-autocomplete/49391907


Multi Cursor
Shift + v to select all lines
Control + v for multi cusors
Shift + a to enter into insert mode


## VIM

Copy to clipboard

Visually select lines and use yank to copy to the shared register

```
" + y
```

## Multiple cursors VIM

In vim selecting and editing is one step. This can be done with the gn text-object. Normally you will search for a word you want to change and the change the next found occurrence with cgn once and then use vim’s most powerful command the . (dot). Using . you can apply the change to the next word or skip one word with n which will jump to the next word.

https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db


## Non-greedy matches for html attributes

Instead of this: dynamic-slot=".*?"

Do this: dynamic-slot=".\{-}"


https://stackoverflow.com/questions/1305853/how-can-i-make-my-match-non-greedy-in-vim


## Refresh current file

```vim
:e
```


https://vi.stackexchange.com/questions/444/how-do-i-reload-the-current-file

## Swap Panes

```vim
prefix + ctrl + o
r
```

## Search and replace with quickfix

Search

```vim
:vim /[0-9]px;/g elements/rh-footer/*.css
```

Add to quickfix

```vim
:copen
```
## Add files to quickfix with Telescope

From `Telescope live_grep`, make your search then add the list to quickfix using

```bash
<C-q>
```

## Open multiple buffers at once

```vim
:next elements/rh-footer/*.css
```

## Edit multiple buffers at once

Use the command :

```vim
bufdo s/string/replacement/g 
```
bufdo : action on all buffers .
s : replacing
g : globally

## nvim-tree

`g?` toggle_help

https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L944

## Tmux

### Swap Panes

Tmux uses the keybinding 'Prefix' followed by 'Ctrl+o' to cycle around the panes. When you use this key-binding for the first time, it moves the pane in one position clockwise.
