FROM ubuntu
ARG DRONE_TAG=v2.1.2
RUN apt update \
 && apt install -y squashfs-tools \
      build-essential \
      ruby \
      bison \
      ruby-dev \
      git-core \
      texinfo \
      curl \
      openssl
RUN git clone https://github.com/kontena/pharos-cluster.git \
 && cd pharos-cluster \
 && git checkout ${DRONE_TAG} \
 && ./build/drone/ubuntu_oss.sh
