- How do I reverse a string with Vim script https://vi.stackexchange.com/questions/4944/how-do-i-reverse-a-string-with-vim-script
    - ex-command :%! rev
    - !!rev

- Unable to replace a space with a new line in Vim: https://stackoverflow.com/questions/1048639/unable-to-replace-a-space-with-a-new-line-in-vim
    - %s/ /Ctrl+v Return/g [Ctrl+Q (Windows version of Ctrl+v)]
    - :1,$s/\ /\n/g [:1,$s/\ /\r/g for windows]



- :h shada
