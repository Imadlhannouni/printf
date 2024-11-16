# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ilhannou <ilhannou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/14 19:03:48 by ilhannou          #+#    #+#              #
#    Updated: 2024/11/14 19:09:38 by ilhannou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c ft_printchar.c ft_printhex_up.c ft_printhex.c \
	  ft_printint.c ft_printptr.c ft_printstr.c ft_printunsigned.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(MAKE) -C ./libft
	cp libft/libft.a $(NAME)
	ar rcs $(NAME) $(OBJ)

clean:
	$(MAKE) clean -C ./libft
	rm -f $(OBJ)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -f $(NAME)

re: fclean all

.PHONY: re fclean clean all
