# Libasm
The aim of this project is to get familiar with assembly language.

```
global _ft_isalpha

extern _ft_islower
extern _ft_isupper

_ft_isalpha:
            call _ft_islower
            test rax, rax
            jnz is_alpha
            call _ft_isupper
            test rax, rax
            jnz is_alpha

is_not_alpha:
            xor rax, rax
            ret

is_alpha:   
            mov rax, 1
            ret
``` 


# The language
An assembly language is a low-level programming language designed for a specific type of processor.<br />The assembly language describes the succession of commands your processor will execute. One line means one instruction. </br >Most programs consist of **directives** followed by one or more **sections**. Lines can have an optional **label**. Most lines have an **instruction** followed by zero or more **operands**. </br >To better understand this project I highly recommend [this article.](https://medium.com/a-42-journey/a-quick-guide-to-code-your-first-assembly-functions-43c2032ebfda)

# General
The project contains basic functions in Assembly using the x86-64 Intel syntax.
  - `ft_isdigit`
  - `ft_isupper`
  - `ft_islower`
  - `ft_isascii`
  - `ft_isalpha`
  - `ft_toupper`
  - `ft_tolower`

## Requirements
- nasm - to install just type `brew install nasm` in the command line.
