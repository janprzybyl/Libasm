#include "../includes/Libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main()
{
    // if (ft_isdigit(22) == 1)
    //     printf("It is digit\n");
    // else
    //     printf("It is not digit\n");


    // if (ft_islower('B') == 1)
    //     printf("It is lower\n");
    // else
    //     printf("It is not lower\n");
    

    // if (ft_isupper('A') == 1)
    //     printf("It is upper\n");
    // else
    //     printf("It is not upper\n");


    // if (ft_isascii('g') == 1)
    //     printf("It is ascii\n");
    // else
    //     printf("It is not ascii\n");


    // if (ft_isalpha('1'))
    //     printf("It is alpha\n");
    // else
    //     printf("It is not alpha\n");


    // printf("%c\n", ft_tolower('F'));


    // printf("%c\n", ft_toupper('p'));


    // if (ft_isalnum('-') == 1)
    //     printf("It is isalnum\n");
    // else
    //     printf("It is not isalnum\n"); 


    // printf("%d\n", ft_strlen("Hello World\n"));   


    // char *dst = malloc(13 * sizeof(char));
    // ft_strcpy(dst, "Hello World\n");
    // printf("%s", dst);
    // free(dst);


    // printf("%d\n", ft_strcmp("Helloo", "Hello"));


    // int fd = open("test.txt", O_CREAT | O_WRONLY);
    // char *write_to = "Hello there boys!";
    // if (fd != -1) {
    //     printf("%zu\n", ft_write(fd, &write_to, strlen(write_to)));
    //     close(fd);
    // }

    // fd = open("test.txt", O_RDONLY);
    // char *read_from;
    // if (fd != -1) {
    //     read(fd, &read_from, sizeof(read_from));
    //     close(fd);
    // }


    char *str = malloc(sizeof(char) * 13);
    str = "Hello there!";
    printf("str before = %s\n", str);
    bzero(&str, 20);
    printf("str after = %s\n", str);

    return (0);
}