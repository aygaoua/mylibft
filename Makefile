# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: azgaoua <azgaoua@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/16 08:06:59 by azgaoua           #+#    #+#              #
#    Updated: 2022/11/18 17:16:05 by azgaoua          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_memset.c			\
		ft_bzero.c			\
		ft_memcpy.c			\
		ft_memmove.c 		\
		ft_memchr.c			\
		ft_memcmp.c			\
		ft_strlen.c			\
		ft_isalpha.c 		\
		ft_isdigit.c		\
		ft_isalnum.c		\
		ft_isascii.c		\
		ft_isprint.c		\
		ft_toupper.c		\
		ft_tolower.c		\
		ft_strchr.c			\
		ft_strrchr.c		\
		ft_strncmp.c		\
		ft_strlcpy.c		\
		ft_strlcat.c		\
		ft_strnstr.c		\
		ft_atoi.c			\
		ft_calloc.c			\
		ft_strdup.c			\
		ft_substr.c			\
		ft_strjoin.c		\
		ft_strtrim.c		\
		ft_split.c			\
		ft_itoa.c			\
		ft_strmapi.c		\
		ft_striteri.c		\
		ft_putchar_fd.c		\
		ft_putstr_fd.c		\
		ft_putendl_fd.c		\
		ft_putnbr_fd.c		\
		
bns_src = ft_lstnew.c		\
			ft_lstadd_front.c	\
			ft_lstsize.c		\
			ft_lstlast.c		\
			ft_lstadd_back.c	\
			ft_lstdelone.c		\
			ft_lstclear.c		

OBJS = $(SRCS:.c=.o) 
OBJ_BNS = $(bns_src:.c=.o)

CC = cc

CC_FLAGS = -Wall -Wextra -Werror

all: $(NAME)

%.o : %.c libft.h
	@$(CC) $(CC_FLAGS) -c $<
	@echo " making : $@ \n (from this : >> $< <<) \n /-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-/"

$(NAME): $(OBJS)
	@ar r $(NAME) $(OBJS)
	@echo "Libft Done finally !"

bonus : $(OBJ_BNS) all
	@ar r $(NAME) $(OBJ_BNS)
	@echo "Bonus Done finally !"
clean:
	@echo "clean all this files : --> $(OBJS) $(OBJ_BNS)"	
	@rm -rf $(OBJS) $(OBJ_BNS)

fclean: clean
	@echo " + that --> $(NAME)"
	@rm -f $(NAME)

re : fclean all
