- 100 days of Ruby
- Books:
    - Books:
    - Site:
        - RubyAPI https://rubyapi.org/
        - Rubymonk https://rubymonk.com/

    - Notes:
        - Literals %q,a,i,x https://docs.ruby-lang.org/en/3.0.0/doc/syntax/literals_rdoc.html#label-Percent+Strings
        - Literals %q,a,i,x https://ruby-china.org/topics/18512
        - Array Manipulations
            a = [2, 3, 7, 8]; b = [2, 7, 9]
            print a & b => 2, 7 => and
            print a | b => 2, 3, 7, 8, 9 => or
        - Array Ranges
            nums = [6, 3, 7, 8, 9]
            print nums[1..3] => 3, 7, 8

- 100 days of Python
    - Books:
    - Sites:
    - Notes:

- 100 days of JavaScript
    - Books:
    - Sites:
    - Notes:

- 100 days of Rust
    - Books:
    - Sites:
        - Graphical depiction of ownership and borrowing in Rust https://rufflewind.com/2017-02-15/rust-move-copy-borrow
    - Notes:


- Design Patterns


__TOOLS / APPS:__
- rake
    - https://github.com/ruby/rake
- bake
    - https://github.com/ioquatix/bake

- ceedling
    Ruby/Rake-based build and test system for C projects
    - https://github.com/ThrowTheSwitch/Ceedling

- PDF reader:
    - zathura
    - gv

- spell check
    - write-good : npm package
    - aspell     : linux
    - spell      : linux
    - look       : linux



__SHELL:__
- tar -xvjf filename.tar.bz2
- tar -xvzf filename.tar.gz




__ANIME / MANGA:__
- Aharen-san wa Hakarenai
- The Greatest Demon Lord Is Reborn as a Typical Nobody
- The moment you fall in love




IPC - Inter-process communication

- nand2tetris


__ASSEMBLER:__

ArmV7 - one of a family of CPUs based on the RISC (reduce instruction set computer) architecture
developed by Advanced RISC Machines (ARM)

esp - stack pointer
ebp - base pointer
esi - source index
edi - destination index



__FILE PERMISSION:__
__read, write, execute__

| r | w | x | - | - | - | --- |
|---|---|---|---|---|---|-----|
| 0 | 0 | 0 | - | - | - | 000 |
| 0 | 0 | 1 | - | - | x | 001 |
| 0 | 1 | 0 | - | w | - | 002 |
| 0 | 1 | 1 | - | w | x | 003 |
| 1 | 0 | 0 | r | - | - | 004 |
| 1 | 0 | 1 | r | - | x | 005 |
| 1 | 1 | 0 | r | w | - | 006 |
| 1 | 1 | 1 | r | w | x | 007 |


| User | Group | Other | --- |
|------|-------|-------|-----|
| rwx  | rwx   | rwx   | 777 |
| rwx  | ---   | ---   | 700 |
| rwx  | ---   | rwx   | 707 |
| rw-  | r--   | r--   | 644 |
| r-x  | ---   | rwx   | 507 |
| r--  | ---   | ---   | 400 |
| --x  | --x   | --x   | 111 |
| --x  | ---   | ---   | 100 |
| ---  | ---   | ---   | 000 |

``````
chmod
    u+x
    u-x
    g+x
    g-x
    o+x
    o-x
``````

__File Types:__ (ls -lah)

| File Type | User | Group | Other | Note                                       |
|-----------|------|-------|-------|--------------------------------------------|
| -         | rwx  | rwx   | rwx   | - :Regular file                            |
| b         | rwx  | rwx   | rwx   | b :Block special file                      |
| c         | rwx  | rwx   | rwx   | c :Character special file                  |
| C         | rwx  | rwx   | rwx   | C :High performance (contiguous data) file |
| d         | rwx  | rwx   | rwx   | d :Directory                               |
| D         | rwx  | rwx   | rwx   | D :Door (Solaris 2.5 and up)               |
| l         | rwx  | rwx   | rwx   | l :Symbolic link                           |
| M         | rwx  | rwx   | rwx   | M :Off-line (migrated) file (Cray DMF)     |
| n         | rwx  | rwx   | rwx   | n :Network special file (HP-UX)            |
| p         | rwx  | rwx   | rwx   | p :FIFO (name pipe)                        |
| P         | rwx  | rwx   | rwx   | P :Port (Solaris 10 and up)                |
| s         | rwx  | rwx   | rwx   | s :Socket                                  |
| ?         | rwx  | rwx   | rwx   | ? : Some other filetype                    |


__DECIMAL TO HEX:__

| Decimal | Div | Output | Rem | Hex |
|---------|-----|--------|-----|-----|
| 123456  | 16  | 7716   | 0   | 0   |
| 7716    | 16  | 482    | 4   | 4   |
| 482     | 16  | 30     | 2   | 2   |
| 30      | 16  | 1      | 14  | E   |
| 1       | 16  | 0      | 1   | 1   |

__Result:__ 1E240

| Decimal   | Div | Output    | Rem | Hex |
|-----------|-----|-----------|-----|-----|
| 373928559 | 16  | 233495534 | 15  | F   |
| 233495534 | 16  | 14593470  | 14  | E   |
| 14593470  | 16  | 912091    | 14  | E   |
| 912091    | 16  | 57005     | 11  | B   |
| 57005     | 16  | 3562      | 13  | D   |
| 3562      | 16  | 222       | 10  | A   |
| 222       | 16  | 13        | 14  | E   |
| 13        | 16  | 0         | 13  | D   |

__Result:__ DEADBEEF


| Decimal | Div | Output | Rem | Binary |
|---------|-----|--------|-----|--------|
| 14      | 2   | 7      | 0   | 0      |
| 7       | 2   | 3      | 1   | 1      |
| 3       | 2   | 1      | 1   | 1      |
| 1       | 2   | 0      | 1   | 1      |

(14)v10 : (1110)v2


| Decimal | Div | Output | Rem | Binary |
|---------|-----|--------|-----|--------|
| 13      | 2   | 6      | 1   | 1      |
| 6       | 2   | 3      | 0   | 0      |
| 3       | 2   | 1      | 1   | 1      |
| 1       | 2   | 0      | 1   | 1      |

(13)v10 : (1101)v2



(1100)v2  : 1x2^3 + 1x2^2 + 0x2^1 + 0x2^0 = 8 + 4 + 0 + 0 = (12)v10
(77)v8    : 7x8^1 + 7x8^0 = 56 + 7 = (63)v10
(524D)v16 : 5x16^3 + 2x16^2 + 4x16^1 + 13x16^0 = 20_480 + 512 + 64 + 13 = (21_069)v10



__BITWISE OPERATION:__

Shift Left

| Syntax     | Binary Form | Value          |
|------------|-------------|----------------|
| x = 7      | 0000 0111   | 7              |
| x = x << 1 | 0000 1110   | 14 (7x2)       |
| x = x << 3 | 0111 0000   | 112 (14x2x2x2) |
| x = x << 2 | 1100 0000   | 192            |

Shift Right

| Syntax     | Binary Form | Value |
|------------|-------------|-------|
| x = 192    | 1100 0000   | 192   |
| x = x >> 1 | 0110 0000   | 96    |
| x = x >> 2 | 0001 1000   | 24    |
| x = x >> 3 | 0000 0011   | 3     |


carry: 0001 1000
       ---------
  28 - 0001 1100
+ 22 - 0001 0110
       ---------
= 50 = 0011 0010


| ---   | A | B | OUTPUT |
|-------|---|---|--------|
|       | 0 | 0 | 00     |
|       | 0 | 1 | 01     |
|       | 1 | 0 | 01     |
|       | 1 | 1 | 10     |
| Carry | - | - | -      |
| 1     | 0 | 0 | 01     |
| 1     | 0 | 1 | 10     |
| 1     | 1 | 0 | 10     |
| 1     | 1 | 1 | 11     |


7 3 9 9 9 1 1 7
9 3 6 0 5 0 1 7
7 1 1 9 9 9 3 7
7 1 0 5 0 6 3 9

7 3 1 5 3 6 9 0
9 0 9 6 9 5 9 3          79 77 79 91 71 39 73 39
9 0 3 9 1 1 7 7          33 11 30 07 06 53 69 91
1 7 7 1 7 9 1 0          96 10 19 37 31 79 76 73
                         90 95 56 91 19 07 79 73
                         95 90 39 17 35 60 01 97
7 0 3 1 3 9 9 7          10 96 65 19 99 99 15 11
1 6 1 9 5 9 1 1          11 33 99 71 91 70 09 15
3 5 7 0 6 9 7 1          77 79 03 70 71 17 00 99
9 3 9 7 0 9 0 7

7 6 7 7 0 1 0 0
3 9 6 9 1 5 9 0
3 9 7 7 9 1 1 9
9 1 3 3 7 1 5 9
