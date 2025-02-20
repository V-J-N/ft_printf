# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vjan-nie <vjan-nie@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/12 16:08:16 by vjan-nie          #+#    #+#              #
#    Updated: 2025/02/20 15:21:19 by vjan-nie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= 	libftprintf.a

SRC		=	ft_printf.c\
			len_int_nbr.c\
			write_char.c\
			write_hex.c\
			write_int_nbr.c\
			write_ptr.c\
			write_str.c\
			write_uns_int_nbr.c\
			ft_strchr.c
			
CC		= 	cc
CFLAGS	= 	-Wall -Wextra -Werror
OBJ		= 	$(SRC:.c=.o)

all: $(NAME)
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@
	
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
