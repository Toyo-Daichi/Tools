FROM continuumio/anaconda3:2021.05-amazonlinux
#
RUN pip install --upgrade pip && \
  pip install awscli && \
  pip install boto3 && \
  pip install chalice 
#
RUN yum install -y sudo && \
  yum install -y jq && \
  yum install -y zip && \
  yum install -y unzip
RUN wget https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_linux_amd64.zip -P /usr/local/src && \
  unzip /usr/local/src/terraform_1.1.3_linux_amd64.zip -d /usr/bin
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
