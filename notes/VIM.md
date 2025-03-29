## VIM

### ARTICLES:
- [How do I reverse a string with Vim script](https://vi.stackexchange.com/questions/4944/how-do-i-reverse-a-string-with-vim-script)
    - `ex-command :%! rev`
    - `!!rev`
- [Capitalize first letter of each word in a selection using Vim](https://stackoverflow.com/questions/17440659/capitalize-first-letter-of-each-word-in-a-selection-using-vim)
    - tldr: `%s/\<./\u&/g`
- [Unable to replace a space with a new line in Vim](https://stackoverflow.com/questions/1048639/unable-to-replace-a-space-with-a-new-line-in-vim)
    - `%s/ /Ctrl+v Return/g [Ctrl+Q (Windows version of Ctrl+v)]`
    - `:1,$s/\ /\n/g [:1,$s/\ /\r/g for windows]`
- [Neovim, LaTeX and Zathura in perfect harmony](https://dev.to/preciouschicken/neovim-latex-and-zathura-in-perfect-harmony-4d7d)
- [Vim sort](https://www.linuxtutorials.org/sort-vim/)
- [Vim sort (stackoverflow)](https://stackoverflow.com/questions/1355004/how-to-sort-numeric-and-literal-columns-in-vim)
- [REST](https://github.com/rest-nvim/rest.nvim#usage)
- [web-tools](https://github.com/ray-x/web-tools.nvim)


### HELP
- `:h shada`
- [Vim Fold CheatSheet](https://gist.github.com/lestoni/8c74da455cce3d36eb68)

### Plugins
- https://github.com/tpope/vim-surround
- [Auto close parentheses and repeat by dot](https://github.com/cohama/lexima.vim)
- https://github.com/skanehira/translate.vim
- https://github.com/google/vim-searchindex


### MAPS:

=> [operator] [count] [motion]
:h operator
:h navigation

Any motion can follow an operator. Marks and searches count as motions, too!
`d/foo` will delete from the cursor to the next instance of 'foo'. `y3fi` will
yank from the cursor to the 3rd 'i' on the line after it.
Counts can also come before operators: `5dd` will delete five lines.


```
:h(elp)



w # => word
W # => WORD
s # => sentence

[, ] # => [] block
(, ) # => () block
<, > # => <> block
{, } # => {} block
", ' # => quoted string
t # => XML/HTML tag

d # => delete / cut
y # => yank / copy
c # => change

:h text-objects
gU # => make uppercase
gu # => make lowercase
g~ # => swap case

< # => shift left
> # => shift right
= # => indent

< -------------------------------
:h left-right-motions

0 # => beginning of line
^ # => first non-blank character
B # => previous WORD
b # => previous word
h # => previous character

^   :h up-down-motions
|  gg # => first line
|  ^b # => up 1 page
|  ^u # => up 1/2 page
|   k # => up 1 line
|

|   :h up-down-motions
|   j # => down 1 line
|  ^d # => down 1/2 page
|  ^f # => down 1 page
|   G # => last line
|

--------------------------------->
:h left-right-motions

$ # => end of line
W # => beginning of next WORD
w # => beginning of next word
E # => end of WORD
e # => end of word
l # => next character

[SEARCHING]
:h pattern-searches

prev    next    forward     backward      matches

N       n       /foo        ?foo          foo
N       n       *           #             word under cursor

;       ,       tx          Tx            upto x
;       ,       fx          Fx            find x

:h mark-motions
mm # => set mark m(a-z), in file
mM # => set mark M(A-Z), across files

'm # => jump to first char of line containing m
`m # => just to exact character of m

'[ # => jump to first char of just-changed text
'' # => jump back to last jump

p # => past AFTER cursor
P # => past BEFORE cursor

u # => undo
^r # => redo

:h file-searching
gf # => find file under cursor in `path` and jump to it
dd # => delete current line

x # => delete character after cursor
% # => jump to matching parenthesis

nG # => jump to line n
^o # => jump back
^i # => jump forward

zz # => center screen on cursor
zt # => align top of screen with cursor
zb # => align bottom of screen with cursor

== # => auto-indent current line
<< # => shift current line left by `shiftwidth`
>> # => shift current line right by `shiftwidth`

^[ # => return to NORMAL MODE
.  # => repeat
yy # => yank current line
r  # => replace char under cursor

[ENTERING INSERT MODE]

I # => beginning of line
i # => before cursor

A # => end of line
a # => after cursor

O # => previous line
o # => next line

s # => substitute character
S # => substitute LINE

C # => change line FROM CURSOR

[ENTERING VISUAL MODE]

v  # => start visual mode
V  # => select LINE
^v # => select by BLOCK

:h v_o
o # => switch cursor to start / end

:h gv
gv # => re-select previous area

:h v_b_I
I # => prepend to each visual block line

:h v_b_A
A # => append to each visual block line

:h '<
'< # => jump to start of prior area






ZZ # => write current file, if modified, and quit
ZQ # => quit without checking for changes (:q!)

:w(rite) # => write current file
:wq # => write current file and quit :write :quite

:sy(ntax) # => enable and configure syntax highlighting

:h quickfix
:mak(e) # => run a compiler and enter quickfix mode

:! # => execute external shell command
!  # => filter motion with shell command

Use :earlier and :later to quickly jump backward and forward in a file's history.

:r(ead) # => read external program output into current file

:scriptnames # => list all files sourced during initialization.


[INSERT MODE]

:h cmdline.txt

^w # => delete word before cursor
^u # => delete line before cursor

^rR # => insert the contents of register R
^r= # => use the expression register (try ^r=5+10)

^t # => increase line indent by `shiftwidth`
^d # => decrease line indent by `shiftwidth`

^x^l # => line completion
^n   # => find next completion suggestion according to complete

[COMMAND-LINE MODE ONLY]

^f   # => edit using Normal Mode    :cmdwin
^r^w # => insert word under cursor  :cmdline-editing
^d   # => completion suggestions    :cmdline-completion

# => Supply % as a range to the :substitute command to run it on every line in the file.
:%s/Scribbl/Design/ # => Scribbled > Designed


:tabnew or :tabnew file # open a file in a new tab
Ctrl + wT               # move the current split window into its own tab
gt or :tabnext or :tabn # move to the next tab
gT or :tabprev or :tabp # move to the previous tab
<number>gt              # move to tab <number>
:tabmove <number>       # move current tab to the <number>th position (indexed from 0)
:tabclose or :tabc      # close the current tab and all its windows
:tabonly or :tabo       # close all tabs except for the current one
:tabdo command          # run the command on all tabs (e.g. :tabdo q - closes all opened tabs)

```
