#!/bin/bash
# Created on 2021.11.29

#----------------------------------------------------------------------
# +++ Set configure
#----------------------------------------------------------------------
export AWS_PROFILE='adminUser-On38'
export AWS_DEFAULT_REGION='ap-northeast-1'
#
image_name='anaconda/aws-cli'
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
    -e AWS_PROFILE -e AWS_DEFAULT_REGION \
    ${image_name} /bin/bash
fi

echo 'Normal END'

exit