#!/bin/bash
sudo apt update
sudo apt install nginx
sudo systemctl start nginx
sudo service nginx status
sudo cp nginx/nginx.conf /etc/neginx/sites-avalable/blog.local
# создаем сивольную ссылку для привязки нашей конфигурации nginx.conf
sudo ln -s /etc/neginx/sites-avalable/blog.local /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx
gcc -Werror -Wextra -Wall server.c -o server1 -lfcgi
# запусскаем server1 на localhost:8080
spawn-fcgi -p 8080 server1

## Фомантирование кода
clang-format --style=Google -n $( find . -name '*.c')
clang-format --style=Google -i $( find . -name '*.c') 
