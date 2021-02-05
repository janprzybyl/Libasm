ASM_CC 		= nasm
ASM_FLAGS 	= -f macho64
CC 			= gcc
CFLAGS 		= -c -Wall -Wextra -Werror
NAME 		= libasm.a
SRCS 		= srcs/ft_isdigit.s \
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
			  srcs/ft_strchr.s \
			  srcs/ft_read.s \
			  srcs/ft_strdup.s \
			  srcs/ft_strcmp.s
OBJS 		= $(SRCS:.s=.o)
LIB_BUILT 	= echo "\033[32m$@ built!\033[0m"

all: $(NAME)	# if library $(NAME) doesn't exist - create!

%.o: %.s
	@$(ASM_CC) $(ASM_FLAGS) $^ -o $@

$(NAME): $(OBJS)	# $(OBJS) stands for all the files with .o extension
	@ar -rc $@ $^
	@$(LIB_BUILT)
	
test:
	@$(CC) srcs/test.c -L. $(NAME) -o $@

clean:
	@/bin/rm -rf $(OBJS)

fclean: clean
	@/bin/rm -rf $(NAME) test

re: fclean all

.PHONY: all clean fclean re