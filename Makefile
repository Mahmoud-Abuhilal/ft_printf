NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f
LIBFT_DIR = ./libft
LIBFT = $(LIBFT_DIR)/libft.a


 SRCS = ft_printf.c ft_putchar_len.c ft_puthex_len.c ft_putnbr_len.c \
		ft_putptr_len.c ft_putstr_len.c ft_putunsigned_len.c

 OBJS = $(SRCS:.c=.o)

 all: $(NAME)

 $(NAME): $(OBJS)
		make -C $(LIBFT_DIR)
		cp $(LIBFT) $(NAME) 
		$(AR) $(NAME) $(OBJS)

%.o: %.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		make -C $(LIBFT_DIR) clean
		$(RM) $(OBJS)

fclean: clean
		make -C $(LIBFT_DIR) fclean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re	