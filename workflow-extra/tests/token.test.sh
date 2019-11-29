#!/bin/sh

export $(grep -v '^#' .env | xargs)

work_path=$(pwd)
# run_remote() {
#     echo $APP_ID $APP_SECRET "\n"
#     . ./bin/wechat/access_token.sh
# }

# TOKEN=`ssh root@aliyun-server $(typeset -f run_remote); run_remote`

TOKEN=`cat ./wechat/access_token.sh | ssh www@doctorwork-dev-2 APP_ID=$APP_ID APP_SECRET=$APP_SECRET 'bash -s'`

echo $TOKEN