NAME	= libft.a

CC	= gcc

RM	= rm -f

AR	= ar rc

CFLAGS	= -Wall -Werror -Wextra

SRC_PATH = srcs
OBJ_PATH = srcs

SRCS_MAIN	= ft_atoi.c \
		  ft_bzero.c \
		  ft_calloc.c \
		  ft_isalnum.c \
		  ft_isalpha.c \
		  ft_isascii.c \
		  ft_isdigit.c \
		  ft_isprint.c \
		  ft_isspace.c \
		  ft_itoa.c \
		  ft_strlen.c \
		  ft_toupper.c \
		  ft_tolower.c \
		  ft_putendl_fd.c \
		  ft_putchar_fd.c \
		  ft_putnbr_fd.c \
		  ft_putunnbr_fd.c \
		  ft_putstr_fd.c \
		  ft_memchr.c \
		  ft_memcpy.c \
		  ft_memcmp.c \
		  ft_memmove.c \
		  ft_memset.c \
		  ft_nbrlen.c \
		  ft_unnbrlen.c \
		  ft_strmapi.c \
		  ft_striteri.c \
		  ft_split.c \
		  ft_strchr.c \
		  ft_strdup.c \
		  ft_strjoin.c \
		  ft_strlcat.c \
		  ft_strlcpy.c \
		  ft_strncmp.c \
		  ft_strnstr.c \
		  ft_strrchr.c \
		  ft_substr.c \
		  ft_strtrim.c 

SRCS_LST	= ft_lstnew.c \
		  ft_lstsize.c \
		  ft_lstadd_front.c \
		  ft_lstadd_back.c \
		  ft_lstdelone.c \
		  ft_lstlast.c \
		  ft_lstclear.c \
		  ft_lstiter.c\
		  ft_lstmap.c

SRCS_NAME	= ${addprefix ft_main/, ${SRCS_MAIN}} \
		  ${addprefix ft_lst/, ${SRCS_LST}} 

OBJS_NAME 	= ${SRCS_NAME:.c=.o}

SRCS = $(addprefix $(SRC_PATH)/,$(SRCS_NAME))
OBJS = $(addprefix $(OBJ_PATH)/,$(OBJS_NAME))

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}
			ranlib ${NAME}

all:		${NAME}

clean:		
			${RM} ${OBJS}
			${RM} ${OBJSB}

fclean:		clean
			${RM} ${NAME}

re:		fclean all

.PHONY:		all clean fclean re
