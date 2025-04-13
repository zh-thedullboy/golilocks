# 变量定义
CXX = g++                # 编译器
CXXFLAGS = -Wall -std=c++11 -I./include  # 编译选项，-I 添加头文件路径
SRC_DIR = src             # 源代码目录
OBJ_DIR = obj             # 中间文件（目标文件）目录
LIBRARY = libgoldilocks.a # 输出的静态库文件

# 获取所有的源文件
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

# 获取所有的目标文件（.cpp -> .o）
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

# 默认目标
all: $(LIBRARY)

# 创建静态库
$(LIBRARY): $(OBJECTS)
	@echo "Creating static library $@"
	ar rcs $@ $^

# 编译每个 .cpp 文件为 .o 文件
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(OBJ_DIR)          # 创建中间文件目录
	$(CXX) $(CXXFLAGS) -c $< -o $@ # 编译 .cpp 文件为 .o 文件

# 清理中间文件和库
clean:
	@echo "Cleaning up..."
	rm -rf $(OBJ_DIR) $(LIBRARY)

# 安装目标（可选）
install:
	@echo "Installing library..."
	# 这里可以添加安装命令，例如将库文件复制到系统路径等

.PHONY: all clean install
