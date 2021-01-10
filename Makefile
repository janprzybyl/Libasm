ASM_CC = nasm
ASM_FLAGS = -f macho64
CC = gcc
CFLAGS = -c -Wall -Wextra -Werror
NAME = libasm.a
HEADERS = includes/
SRCS = srcs/ft_isdigit.s \
		srcs/ft_islower.s \
		srcs/ft_isupper.s \
		srcs/ft_isascii.s \
		srcs/ft_isalpha.s \
		srcs/ft_tolower.s \
		srcs/ft_toupper.s \
		srcs/ft_isalnum.s \
		srcs/ft_strlen.s \
		srcs/ft_strcpy.s \
		srcs/ft_write.s \
		srcs/ft_bzero.s \
		srcs/ft_strchr.s
		#srcs/ft_strcmp.s

OBJS = $(SRCS:.s=.o)

all: $(NAME)

%.o: %.s
	@nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	
test:
	@gcc srcs/test.c -L. $(NAME) -o test				# compile test.c and libasm.a library together to create exec file

clean:
	@/bin/rm -rf $(OBJS)

fclean: clean
	@/bin/rm -rf $(NAME) test

re: fclean all

.PHONY: all clean fclean re