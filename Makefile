ASM_CC = nasm
ASM_FLAGS = -f macho64
CC = gcc
CFLAGS = -c -Wall -Wextra -Werror
NAME = libasm.a
HEADERS = includes/
SRCS = srcs

$(NAME): all
 
all: 
	@$(ASM_CC) $(ASM_FLAGS) $(SRCS)/*.s       			# compile *.s files
	@ar -rc $(NAME) $(SRCS)/*.o							# create a static library using object files and name it libasm.a
	@echo "\033[32m$(NAME) built!\033[0m"				

test:
	@gcc $(SRCS)/test.c -L. $(NAME) -o test				# compile test.c and libasm.a library together to create exec file
	@echo "\033[32mlibasm test ready!\033[0m"

	
clean:
	@rm *.o srcs/*.o

fclean:
	@rm $(NAME) *.o srcs/*.o test

re: fclean all

.PHONY: all clean fclean re