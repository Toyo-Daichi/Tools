FROM node:17.0.1-slim
#
RUN npm install -g parcel
#
ARG USERNAME=docker-toyo
ARG UID=1001
ARG GID=1000
RUN useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USERNAME}
#
USER ${USERNAME}
WORKDIR /home/${USERNAME}
EXPOSE 8080