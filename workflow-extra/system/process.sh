## 端口监听
lsof -n -i :9229 | grep LISTEN

## killall node
ps ax | grep node
killall -9 node

kill `sudo lsof -t -i:9229`