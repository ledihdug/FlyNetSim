#!/bin/sh
#Update and Upgrade
#sudo apt-get update 
#sudo apt-get upgrade

# PREPARE FOR NS-3 INSTALLATION
# minimal requirements for C++ users (release)
apt-get install g++ python3 -y

# minimal requirements for Python API users (release 3.30, 3.31, and ns-3-dev)
apt-get install g++ python3 python3-dev pkg-config sqlite3 -y

# minimal requirements for Python (development)
apt-get install python3-setuptools git -y

# Netanim animator:
apt-get install qt5-default mercurial -y

# Support for ns-3-pyviz visualizer Ubuntu 18
apt-get install gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  -y

# Support for MPI-based distributed emulation
apt-get install openmpi-bin openmpi-common openmpi-doc libopenmpi-dev -y

# Support for bake build tool:
apt-get install autoconf cvs bzr unrar -y

#Debugging:
apt-get install gdb valgrind -y

# Support for utils/check-style.py code style check program
apt-get install uncrustify -y

# Doxygen and related inline documentation:
apt-get install doxygen graphviz imagemagick -y
apt-get install texlive texlive-extra-utils texlive-latex-extra texlive-font-utils dvipng latexmk -y

# The ns-3 manual and tutorial are written in reStructuredText for Sphinx 
apt-get install python3-sphinx dia  -y

#GNU Scientific Library (GSL) support for more accurate 802.11b WiFi error models (not needed for OFDM):

apt-get install gsl-bin libgsl-dev libgsl23 libgslcblas0 -y

# To read pcap packet traces

apt-get install tcpdump -y

# Database support for statistics framework
apt-get install sqlite sqlite3 libsqlite3-dev -y

# Xml-based version of the config store
apt-get install libxml2 libxml2-dev -y

# PIP install

sudo apt install python-pip -y
sudo apt install python3-pip -y

# Support for generating modified python bindings

apt-get install cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake -y
python3 -m pip install --user cxxfilt -y

# A GTK-based configuration system
apt-get install libgtk-3-dev -y

# To experiment with virtual machines and ns-3
apt-get install vtun lxc uml-utilities -y

# Support for openflow module (requires some boost libraries)
apt-get install libboost-signals-dev libboost-filesystem-dev

# Intall Curl
sudo apt install curl -y
echo "deb http://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/Debian_9.0/ ./" >> /etc/apt/sources.list
wget https://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/Debian_9.0/Release.key -O- | sudo apt-key add

sudo apt-get install libzmq5 libzmq-dev libczmq4 libczmq-dev czmq libxml2 libxml2-dev -y







