## GCC Related



-------------


#### How can I see the assembly code for a C++ program ?

```

gcc -S main.c

- Compile with `-g -Wa, -alh` flag, which gives intermixed source and assembly
  on stdout (-Wa asks compiler driver to pass options to assembler, -al turns on
      assembly listing, and -ah adds "high-level source" listing)

g++ -g -c -Wa,-alh main.c

```

#### PEEK INTO THE BINARY

```

objdump -d main.out
objdump -Mintel -drw main.o

-r      : show symbol names on relocations (so you'd see `puts` in the `call` instruction below)
-R      : show dynamic-linking relocations / symbol names (useful on shared libraries)
-C      : demangles C++ symbol names
-w      : is "wide" mode: it doesn't line-wrap the machine-code bytes
-Mintel : use GAS/binutils MASM-like `.intel_syntax noprefix` syntax instead of AT&T
-d      : disassembles all executable sections
-S      : intermixes assembly with source (-g required while compiling with g++)

alias disas='objdump -drwCS -Mintel'


> gcc -g -c main.c
> objdump -d -Mintel -S main.o

```


#### USE YOUR DEBUGGER

use `disas` command in `GDB`




'objdump -drwC -S' can also disassemble with mixed source + asm
For more about getting nice output:
gcc -O3 -S

gcc -O2 -S



gcc -03 -march=haswell -fverbose-asm


gcc flags:

-masm=intel # => for intel syntax
-masm=att   # => for AT & T syntax

-fverbose-asm # => verbose
  Put extra commentary information in the generated assembly code to make it more readable.

  The added comments include:

  - Information on the compiler version and command-line options,
  - The source code lines associated with the assembly instructions, in the form FILENAME:LINENUMBER:CONTENT OF LINE,
  - Hints on which high-level expressions correspond to the various assembly instruction operands.


gcc -fverbose-asm -save-temps -masm=intel -S

sources:
https://stackoverflow.com/questions/840321/how-can-i-see-the-assembly-code-for-a-c-program#840363
https://stackoverflow.com/questions/1289881/using-gcc-to-produce-readable-assembly
https://stackoverflow.com/questions/38552116/how-to-remove-noise-from-gcc-clang-assembly-output
