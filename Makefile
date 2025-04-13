# 定义编译器和编译选项
CXX = g++
CXXFLAGS = -std=c++11 -Wall -O2

# 定义头文件路径
INCLUDES = -I.

# 定义库文件路径
LIBS = -L. -lgold

# 源文件
SRCS = goldilocks.cpp test.cpp

# 目标文件
OBJS = $(SRCS:.cpp=.o)

# 可执行文件名
TARGET = test

# 默认目标
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LIBS)

# 生成目标文件的规则
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# 清理生成的文件
clean:
	rm -f $(OBJS) $(TARGET)

run:
	./${TARGET}

# 安装静态库
install: libgold.a
	@echo "Installing static library..."
	# 根据需要安装库文件

# 自动生成依赖
depend: $(SRCS)
	makedepend $(SRCS)

.PHONY: all clean depend install test
