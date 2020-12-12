# Everything
Here resides all knowledge of the world. Or at least all my minuscule mind could bear and my lazy personality
allows me to write down. And of course since this document is written during my work its all just technical
stuff. So let my, partial, knowledge impress you.

## GCC
- **-fdebug-prefix-map==_path_*: Changes the path of the debug symbols to _path_. Default is a relativ path
  from where the gcc was called.
  
## GDB
- **set variable _name_ = _value_** Set the value of a variable
- **info registers [name]** Prints processor register except for floating-point and vector
- **p/x $r0** Prints the register r0
- **display /ni $pc** Print the next _n_ instructions
- **si/ni** Step/Next instruction
- **layout** Changes the layout if in tui mode: **asm*, **src*, **regs*...
- **TUI**: Layout the GDB window with other view as just the console interpreter:
    - **layout** Changes the layout if in tui mode: *next*, *prev*, *asm*, *src*, *regs*...
    - **focus** _name_: Changes which layout window should be scrollable

## make 
- **ifeq ($(OS), Windows_NT)** Checks if OS is a windows

## vim
- **C-x C-f** Call omni complete file name
- **C-W o** Close all splits but the current one
- **C-W =** Normalize all split sizes
- **:windo difft[his]** diff the current split
- **:diffo[ff]** End diff mode
- Bookmarks:
    - **mA** Create a global bookmark. Global because it is upper case. Local bookmarks are just valid inside one file.
    - **'A**  And jump back to it. 
    - **`A** 
- **C-k <>** Insert a digraph in insert mode
- **:digraphs** list all defined digraphs

## Terminal goodies
- **reset** fixes a messed up terminal state
- **vim $(find ... )** opens all found files in buffers
- **find -name something -exec vim {} \;** opens each found file with vim
