#! /bin/bash

appid=${APP_ID}
secret=${APP_SECRET:-}

if [ -z $appid ]; then
    exit 1
fi

mock="curl http://yapi.doctorwork.com/mock/208/access_token"
command="curl https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=${appid}&secret=${secret} -s"

id='access_token":"'
action='s/.*'${id}'\([^"]*\).*/\1/g'
str=`$command`
echo $str | sed "${action}"