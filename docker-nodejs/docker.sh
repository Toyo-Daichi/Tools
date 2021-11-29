#!/bin/bash
# Created on 2021.11.29

#----------------------------------------------------------------------
# +++ Set configure
#----------------------------------------------------------------------
image_name='nodejs'
user_name='docker-toyo'
#
status='login' # 'create'(update) or 'login'

#----------------------------------------------------------------------
# +++ Start container
#----------------------------------------------------------------------
if [ ${status} = 'create' ]; then
  docker build -t ${image_name} .
elif [ ${status} = 'login' ]; then
  docker run -it --rm \
    -v ${HOME}/:/home/${user_name} -v ${HOME}/.aws/:/home/${user_name}/.aws \
    ${image_name} /bin/bash
fi

echo 'Normal END'

exit