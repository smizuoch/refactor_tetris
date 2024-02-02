NAME = tetris

INC_DIR = ./includes

SRCS_DIR = ./srcs

SRCS_FILES = tetris.c

SRCS = $(addprefix $(SRCS_DIR)/, $(SRCS_FILES))

OBJS = $(SRCS:.c=.o)

CC = cc

CFLAGS = -I$(INC_DIR)

LDFLAGS = -lncurses

RM = rm

RMFLAGS = -f

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LDFLAGS) -o $(NAME) # LDFLAGSを追加

all: $(NAME)

clean:
	$(RM) $(RMFLAGS) $(OBJS)

fclean: clean
	$(RM) $(RMFLAGS) $(NAME)

re: fclean all

.PHONY: all clean fclean re debug