## TOOLS

- `valgrind --tool=cachegrind ls -l`
    ```
    Valgrind is an instrumentation framework for building dynamic analysis tools.
    There are Valgrind tools that can automatically detect many memory management and threading bugs,
    and profile your programs in detail. You can also use Valgrind to build new tools.
    ```
- kcachegrind:
    ```
    Cachegrind simulates how your program interacts with a machine's cache hierarchy and (optionally) branch predictor.
    It simulates a machine with independent first-level instruction and data caches (I1 and D1),
    backed by a unified second-level cache (L2). This exactly matches the configuration of many modern machines.
    ```
- edb-debugger
    ```
    edb debugger is a Linux equivalent of the famous “Olly debugger” on the Windows platform.
    ```
- diStorm3
    ```
    diStorm is a lightweight, easy-to-use and a fast decomposer library.
    It disassembles instructions in 16, 32 and 64-bit modes.
    It is also the fastest disassembler library.
    The source code is very clean, readable, portable and platform independent
    (supports both little and big endianity). diStorm solely depends on the C library.
    Therefore it can be used in embedded or kernel modules.
    ```
- dex2jar
    ```
    Dex2jar is a lightweight API designed to read the Dalvik Executable (.dex/.odex) format.
    It is used to work with Android and Java .class files
    ```
- apktool
    ```
    Apktool is a tool third party tool for reverse engineering that can decode resources to nearly original
    form and recreate them after making some adjustments.
    It allows debugging smali code step by step and also it allows working
    with app easier due to its project-like files structure and
    automation of some repetitive tasks like building apk, etc.
    ```


## USEFUL
- https://github.com/francoischalifour/todo-cli (Command-line tool to manage Todo lists)
- https://github.com/codito/habito (Simple commandline habits tracker.)
- Google Translator CLI
      `wget git.io/trans`
      `chmod +x ./trans`

-------------------------------------

- https://github.com/nerdypepper/dijo (scriptable, curses-based, digital habit tracker)
- https://github.com/chubin/wttr.in
    > The right way to check the weather (curl wttr.in)
