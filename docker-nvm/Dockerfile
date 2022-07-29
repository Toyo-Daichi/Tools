FROM ubuntu:latest 
SHELL ["/bin/bash", "-c"]
#
RUN apt-get update && \
  apt-get install -y curl && \
  apt-get install -y git && \
  mkdir /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
RUN curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh" | bash && \
  . ${NVM_DIR}/nvm.sh && \
  nvm install --lts && \
  nvm use --lts 
#
ARG USERNAME=docker-toyo
ARG GROUPNAME=docker-group
ARG UID=1000
ARG GID=1000
RUN groupadd -g ${GID} -o ${GROUPNAME} && \
  useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}
EXPOSE 3000 8080 
