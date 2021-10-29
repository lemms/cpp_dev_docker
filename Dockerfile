# Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="lemms"
LABEL version="1.0"
LABEL description="This is a standard C++ development Docker image."

#Disable prompt during package installation
ARG DEBIAN_FRONTEND=noninteractive

# Install developer tools
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install build-essential -y
RUN apt-get install curl -y
RUN apt-get install vim -y
RUN apt-get install universal-ctags -y
RUN apt-get install silversearcher-ag -y
RUN apt-get install llvm -y
RUN apt-get install clang -y
RUN apt-get install g++ -y
RUN apt-get install make -y
RUN apt-get install cmake -y
RUN apt-get install git -y
RUN apt-get install mercurial -y
RUN apt-get install libc6-dbg -y
RUN apt-get install gdb -y
RUN apt-get install binutils -y
RUN apt-get install valgrind -y
RUN apt-get install clang-format -y
RUN apt-get install clang-tidy -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install conan

# Install .vimrc
RUN git clone https://github.com/lemms/customvimrc.git
RUN cp customvimrc/.vimrc ~/.vimrc
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Run :PlugInstall in vim when you first use it
