*This project has been created as part of the 42 curriculum by mabuhila.*

# Libft - Your First C Library

## Description

**Libft** (Library C) is the very first project of the 42 core curriculum. The objective of this project is to re-code a subset of standard C library functions (`libc`), as well as additional utility functions for string manipulation, memory management, and linked list handling.

Developing `libft` builds a foundational understanding of C programming mechanics, low-level dynamic memory allocation (`malloc` and `free`), pointer arithmetic, data structures, and static library compilation (`ar rcs`). The resulting static library (`libft.a`) serves as a core dependency for subsequent 42 C projects (such as `get_next_line`, `ft_printf`, and `push_swap`).

---

## Library Overview & Detailed Description

The `libft.a` static library consists of three main function sets:

### 1. Standard C Library Functions (Libc)
Re-implementations of standard POSIX/ISO C library functions without relying on external non-system routines:

* **Memory Operations**: `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_calloc`
* **String Analysis & Manipulation**: `ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`, `ft_strnstr`, `ft_strdup`
* **Character Classification & Conversion**: `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_toupper`, `ft_tolower`, `ft_atoi`

### 2. Additional Utility Functions
Utility functions designed to facilitate complex string operations and file-descriptor outputs:

* **String Formatting & Extraction**:
  * `ft_substr`: Extracts a substring from a given index and length.
  * `ft_strjoin`: Concatenates two strings into a new dynamically allocated string.
  * `ft_strtrim`: Trims specified character sets from the beginning and end of a string.
  * `ft_split`: Splits a string into an array of strings using a delimiter character.
  * `ft_itoa`: Converts an integer into a null-terminated string representation.
  * `ft_strmapi`: Applies a function to each character of a string to create a new string.
  * `ft_striteri`: Applies an in-place function with index awareness to a string.
* **File Descriptor Outputs**:
  * `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`: Writes characters, strings, lines, or integers to a given file descriptor (`1` for `stdout`, `2` for `stderr`, etc.).

### 3. Bonus Functions (Linked Lists)
Functions for creating, manipulating, iterating, and destroying singly linked lists using the `t_list` structure:

```c
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}	t_list;
```

* `ft_lstnew`: Allocates and initializes a new list node.
* `ft_lstadd_front`: Adds a node at the beginning of the list.
* `ft_lstsize`: Returns the number of nodes in a list.
* `ft_lstlast`: Returns the last node of a list.
* `ft_lstadd_back`: Appends a node to the end of a list.
* `ft_lstdelone`: Deallocates a single node's content and structure using a custom destructor.
* `ft_lstclear`: Deallocates an entire list and resets the head pointer to `NULL`.
* `ft_lstiter`: Iterates through a list, applying an in-place function to each node's content.
* `ft_lstmap`: Creates a new list resulting from applying a function to each node's content, with complete memory rollback safety on allocation failures.

---

## Instructions

### Prerequisites
* GCC or Clang compiler
* GNU Make

### Compilation
Clone the repository and run `make` at the root directory:

```bash
# Compile mandatory AND bonus (linked list) functions into libft.a
make
```

#### Available Makefile Rules
* `make` or `make all`: Compiles mandatory and bonus source files into `libft.a`.
* `make clean`: Removes intermediate object files (`.o`).
* `make fclean`: Removes object files and the generated `libft.a` static library.
* `make re`: Rebuilds the library from scratch.

### How to Use `libft.a` in Your Projects

1. Include the header in your C source files:
   ```c
   #include "libft.h"
   ```

2. Compile your program with `libft.a`:
   ```bash
   cc -Wall -Wextra -Werror main.c -L. -lft -o my_program
   ```

---

## Resources

### References & Documentation
* [Man Pages (Linux/POSIX)](https://man7.org/linux/man-pages/) – Official reference for standard `libc` function behavior.
* [C Data Structures: Linked Lists (GeeksforGeeks)](https://www.geeksforgeeks.org/linked-list-set-1-introduction/) – Overview of linked list concepts and pointer manipulation.
* [GNU Make Manual](https://www.gnu.org/software/make/manual/) – Official guide for building static library Makefile rules.

### Use of AI Assistance
In accordance with 42 academic rules, AI (Gemini 3 Flash) was utilized during this project for the following specific tasks:
* **Code Review & Edge-Case Verification**: Analyzing memory safety in double pointers, boundary conditions, and checking compliance with Norminette rules.
* **Peer Evaluation Defense Preparation**: Generating technical explanations and mock defense questions regarding memory leaks, pointer pass-by-value mechanisms, and double pointer manipulations.
* **Documentation Assistance**: Structuring and formatting this `README.md` file to meet curriculum requirements.
