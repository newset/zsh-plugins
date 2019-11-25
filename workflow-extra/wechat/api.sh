#!/bin/sh
action=token
params=grant_type=client_credential&appid=$appID&secret=$appsecret

curl https://api.weixin.qq.com/cgi-bin/${action}?${params}
