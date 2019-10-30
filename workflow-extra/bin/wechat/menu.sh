
## 读取menu, 保存到 texts/menu.txt
params=access_token=$TOKEN
bin=$METHOD
data=$DATA

get() {
    action=menu/get
    echo `curl https://api.weixin.qq.com/cgi-bin/${action}?${params} -s `
}

create() {
    action=menu/create
    echo `curl https://api.weixin.qq.com/cgi-bin/${action}?${params} -s `
}

get