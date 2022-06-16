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

:e



https://vi.stackexchange.com/questions/444/how-do-i-reload-the-current-file

## Swap Panes

prefix + ctrl + o
r
