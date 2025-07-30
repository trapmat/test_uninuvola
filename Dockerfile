FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
#Installa toolchain C++17, Python e Supervisor
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      build-essential \       # gcc, g++ (C++17 di default su Ubuntu 22.04)
      python3 python3-pip \
      supervisor \
      cmake \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

#Crea directory per i binari e per i log
RUN mkdir -p /root/bin /root/log
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
