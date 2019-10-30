#!/bin/sh

export $(grep -v '^#' .env | xargs)

work_path=$(pwd)
# run_remote() {
#     echo $APP_ID $APP_SECRET "\n"
#     . ./bin/wechat/access_token.sh
# }

# TOKEN=`ssh root@aliyun-server $(typeset -f run_remote); run_remote`

TOKEN=`cat ./bin/wechat/access_token.sh | ssh www@doctorwork-dev-2 APP_ID=wx2d352d72afc10db6 APP_SECRET=bb57e8b01f4591dcee3fc2493e8adf9f 'bash -s'`

echo $TOKEN