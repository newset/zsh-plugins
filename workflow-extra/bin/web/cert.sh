#! /bin/shell

# 仅生成证书
certbot certonly --nginx

# 自动更新
echo "0 0,12 * * * root python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew" | sudo tee -a /etc/crontab > /dev/null