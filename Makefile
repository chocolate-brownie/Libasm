NAME        := libasm.a

NASM        := nasm
NASMFLAGS   := -f elf64
AR          := ar rcs
RM          := rm -f
MKDIR_P     := mkdir -p

MANDATORY_DIR := mandatory
BONUS_DIR     := bonus
OBJ_DIR       := .obj

MANDATORY_SRCS := \
	$(MANDATORY_DIR)/ft_strlen.s \
	$(MANDATORY_DIR)/ft_strcpy.s \
	$(MANDATORY_DIR)/ft_strcmp.s \
	$(MANDATORY_DIR)/ft_write.s \
	$(MANDATORY_DIR)/ft_read.s \
	$(MANDATORY_DIR)/ft_strdup.s

BONUS_SRCS := \
	$(BONUS_DIR)/ft_atoi_base_bonus.s \
	$(BONUS_DIR)/ft_list_push_front_bonus.s \
	$(BONUS_DIR)/ft_list_size_bonus.s \
	$(BONUS_DIR)/ft_list_sort_bonus.s \
	$(BONUS_DIR)/ft_list_remove_if_bonus.s

MANDATORY_OBJS := $(patsubst %.s,$(OBJ_DIR)/%.o,$(MANDATORY_SRCS))
BONUS_OBJS     := $(patsubst %.s,$(OBJ_DIR)/%.o,$(BONUS_SRCS))

.PHONY: all clean fclean re bonus

all: $(NAME)

$(NAME): $(MANDATORY_OBJS)
	$(AR) $(NAME) $(MANDATORY_OBJS)

bonus: $(MANDATORY_OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(MANDATORY_OBJS) $(BONUS_OBJS)

$(OBJ_DIR)/%.o: %.s
	@$(MKDIR_P) $(dir $@)
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	$(RM) -r $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all
