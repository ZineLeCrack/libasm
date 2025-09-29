NAME = libasm.a
EXEC_NAME = libasm

CC = cc
NASM = nasm

NASMFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
MAIN = main.c

AR = ar rcs

OBJS = $(SRCS:.s=.o)
MAIN_OBJ = $(MAIN:.c=.o)

all: $(NAME) $(EXEC_NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(EXEC_NAME): $(MAIN_OBJ)
	$(CC) $(CFLAGS) -L. -Ilibasm $(MAIN_OBJ) $(NAME) -o $(EXEC_NAME)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

main: all
	$(CC) $(CFLAGS) $(MAIN) $(NAME) -o $(EXEC_NAME)

clean:
	$(RM) $(OBJS)
	$(RM) $(MAIN_OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(EXEC_NAME)

re: fclean all
