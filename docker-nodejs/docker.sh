#!/bin/bash
# Created on 2021.11.29

#----------------------------------------------------------------------
# +++ Set configure
#----------------------------------------------------------------------
image_name='nodejs'
user_name='docker-toyo'
#
statuses='create login'

#----------------------------------------------------------------------
# +++ Start container
#----------------------------------------------------------------------
select status in ${statuses}; do
  if [ ${status} = 'create' ]; then
    docker build -t ${image_name} .
  elif [ ${status} = 'login' ]; then
    docker run -it --rm  \
      -u `id -u ${USER}` \
      -v ${HOME}/:/home/${user_name} -v ${HOME}/.aws/:/home/${user_name}/.aws \
      ${image_name} /bin/bash --login
  fi
  break
done

echo 'Normal END'
exit
