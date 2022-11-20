cmake_minimum_required(VERSION 3.0)

project(asm-hello-world LANGUAGES ASM)

add_link_options(-nostdlib -nodefaultlibs -nostdinc -no-pie)

add_executable(asm-hello-world main.S)
