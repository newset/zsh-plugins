## 测试菜单

export $(grep -v '^#' .env | xargs)

# # python ./python/menu.py 'get' $APP_ID $APP_SECRET $TOKEN 
# command=`ssh www@doctorwork-dev-2 python /home/www/tools/python/menu.py get $APP_ID $APP_SECRET $TOKEN`
# res=${command}

## json_pp 格式化 json 输出 
## python -mjson.tool 中文输出有误
cat ./bin/wechat/menu.sh | ssh www@doctorwork-dev-2 TOKEN=$TOKEN 'bash -s' | json_pp | tee ./temp/menu.txt | cat
