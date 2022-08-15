FROM golang:1.16.8 
RUN apt-get update && \
  apt-get install -y sudo && \ 
  apt-get install -y git
RUN go get fyne.io/fyne/v2 
#
ARG USERNAME=docker-toyo
ARG GROUPNAME=docker-group
ARG UID=1000
ARG GID=1000
RUN groupadd -g ${GID} -o ${GROUPNAME} && \
  useradd -m -s /bin/bash -u ${UID} -g ${GID} -G sudo ${USERNAME} && \
  echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#
USER ${USERNAME}
WORKDIR /home/${USERNAME}
