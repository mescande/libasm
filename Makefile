# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/02 14:03:19 by mescande          #+#    #+#              #
#    Updated: 2021/03/01 14:28:12 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libasm.a 

MAKE		+= --no-print-directory

CC			=	nasm
FLAGS		=	-felf64

LEN_NAME	=	`printf "%s" $(NAME) | wc -c`
DELTA		=	$$(echo "$$(tput cols)-32-$(LEN_NAME)" | bc)

SRC_DIR = srcs/
OBJ_DIR = obj/
INC_DIR = includes/
SRC_LIST = ft_strlen.s\
		   ft_strcpy.s\
		   ft_strcmp.s\
		   ft_write.s\
		   ft_read.s\
		   ft_strdup.s
		   

SRC			=	$(addprefix $(SRC_DIR), $(SRC_LIST))
OBJ			=	$(addprefix $(OBJ_DIR), $(SRC_LIST:.s=.o))
DIR			=	$(sort $(dir $(OBJ)))
NB			=	$(words $(SRC_LIST))
INDEX		=	0

SHELL		:=	/bin/bash

all: 
	@$(MAKE) -j $(NAME)

$(NAME):		$(OBJ) Makefile
	@ar rcs $(NAME) $(OBJ) 
	@printf "\r\033[38;5;117m✓ MAKE $(NAME)\033[0m\033[K\n"

$(OBJ_DIR)%.o:	$(SRC_DIR)%.s Makefile | $(DIR)
	@$(eval DONE=$(shell echo $$(($(INDEX)*20/$(NB)))))
	@$(eval PERCENT=$(shell echo $$(($(INDEX)*100/$(NB)))))
	@$(eval TO_DO=$(shell echo $$((20-$(INDEX)*20/$(NB) - 1))))
	@$(eval COLOR=$(shell list=(160 196 202 208 215 221 227 226 190 154 118 84 46); index=$$(($(PERCENT) * $${#list[@]} / 100)); echo "$${list[$$index]}"))
	@printf "\r\033[38;5;%dm↻ [%s]: %2d%% `printf '█%.0s' {0..$(DONE)}`%*s❙%s\033[0m\033[K" $(COLOR) $(NAME) $(PERCENT) $(TO_DO) "" "$(shell echo "$@" | sed 's/^.*\/\(.*\).[och]$$/\1/')"
	@$(CC) $(FLAGS) $< -o $@
	@$(eval INDEX=$(shell echo $$(($(INDEX)+1))))

$(DIR):
	@mkdir -p $@

test: all
	clang-9 main.c -o $@ -I $(INC_DIR) libasm.a
	@echo "Starting test :"
	./test

clean:
	@rm -rf $(OBJ_DIR)

aclean: clean
	@rm -rf $(EXEC)
	@rm -rf $(NAME)

tclean: clean
	@rm -rf $(EXEC)

fclean: clean
	@rm -rf $(NAME)

norme:
	norminette $(SRC_DIR) $(INC_DIR)

norminette: norme

re: aclean
	@$(MAKE)

.PHONY: all clean aclean tclean fclean re

-include $(OBJ:.o=.d)
