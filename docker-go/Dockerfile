FROM golang:latest 
#
ARG USERNAME=docker-toyo
ARG GROUPNAME=docker-group
ARG UID=1000
ARG GID=1000
RUN groupadd -g ${GID} -o ${GROUPNAME} && \
  useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}
#
USER ${USERNAME}
WORKDIR /home/${USERNAME}
