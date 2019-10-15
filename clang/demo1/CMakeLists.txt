# Step 1
# 表示项目的名称是 demo
PROJECT(demo)
# 限定CMake的版本
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
# AUX_SOURCE_DIRECTORY 将当前目录中的源文件名称赋值给变量 DIR_SRCS
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../libOne/include/)

AUX_SOURCE_DIRECTORY(. DIR_SRCS)
# 指示变量 DIR_SRCS 中的源文件需要编译 成一个名称为 main 的可执行文件
ADD_EXECUTABLE(demo ${DIR_SRCS})
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../libOne/ libOne)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../libTwo/ libTwo)
target_link_libraries(demo TEST1_lib TEST2_lib)
