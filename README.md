# TeX Research Diary

Use TeX/LaTeX to keep a research diary on your UNIX/Linux system, with useful tools and scripts to simplify the process.

Adapted from [mikhailklassen/research-diary-project](https://github.com/mikhailklassen/research-diary-project)

## Usage

Scripts:

```
add_entry.sh         :  Adds an entry for the current date and creates year folder if necessary
clean.sh             :  Cleans up files after compilation
compile_today.sh     :  Compile today's entry
create_anthology.sh  :  Gather entries for a specified year and batch-compile into an anthology
```

To compile an anthology, modify the makefile to specify the year and run

```bash
$ make anthology
```

Clean directory after compilation, run

```bash
$ make clean
```
