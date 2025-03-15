cmake_minimum_required(VERSION 2.8)

project(mymuduo)

aux_source_directory(./src SRC_LIST)

include_directories(./include)

add_executable(mymuduo ${SRC_LIST})