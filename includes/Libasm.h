#ifndef _LIBASM_H_
#define _LIBASM_H_

#include <stdlib.h>

int ft_strlen(char *s);
int ft_strcpy(char *dst, char *src);
int ft_strcmp(char *s1, char *s2);
size_t ft_write(int fields, const void *buf, size_t nbyte);
size_t ft_read(int fields, void *buf, size_t nbyte);
char *ft_strdup(char *s1);


/* Additional functions */

int ft_isdigit(int c);
int ft_islower(int c);
int ft_isupper(int c);
int ft_isascii(int c);
int ft_isalpha(int c);
int ft_tolower(int c);
int ft_toupper(int c);
int ft_isalnum(int c);
void ft_bzero(void *s, size_t n);
char *ft_strchr(const char *s, int c);


#endif