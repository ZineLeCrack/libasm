NAME = libasm.a
EXEC_NAME = libasm

CC = cc
NASM = nasm

NASMFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror -no-pie

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
MAIN = main.c

AR = ar rcs

OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

main: all
	$(CC) $(CFLAGS) $(MAIN) $(NAME) -o $(EXEC_NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(EXEC_NAME)

re: fclean all
