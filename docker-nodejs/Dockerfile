FROM node:17.0.1-slim
#
RUN npm install -g parcel
#
ARG USERNAME=docker-toyo
ARG GROUPNAME=docker-group
ARG UID=1001
ARG GID=1001
RUN groupadd -g ${GID} -o ${GROUPNAME} && \
  useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}
#
USER ${USERNAME}
WORKDIR /home/${USERNAME}
EXPOSE 8080
