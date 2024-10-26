FROM ubuntu/nginx:1.18-20.04_beta

# переменные среды
ENV NGINX_USER=elishabr \
    NGINX_GROUP=elishabr \
    NGINX_RUN_USER=elishabr \
    NGINX_RUN_GROUP=elishabr

WORKDIR /home


# создать группу и пользователя
RUN groupadd -r $NGINX_GROUP && useradd -r -g $NGINX_GROUP $NGINX_USER

# создание дополнительных папок для nginx и установка владельца этих папок
RUN touch /var/run/nginx.pid && \
    mkdir -p /var/cache/nginx /var/log/nginx /var/lib/nginx/body && \
    chown -R $NGINX_RUN_USER:$NGINX_RUN_GROUP /etc/nginx /var/cache/nginx /var/log/nginx /var/run/nginx.pid /var/lib/nginx

# изменяем прова доступа на встроенные утилиты
RUN chmod u-s /usr/bin/gpasswd; \
    chmod u-s /usr/bin/newgrp; \
    chmod u-s /bin/su; \
    chmod u-s /bin/mount; \
    chmod u-s /bin/umount; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod 255 /usr/bin/expiry; \
    chmod 255 /usr/bin/wall; \
    chmod 255 /sbin/unix_chkpwd; \
    chmod 255 /usr/bin/chage; \
    chmod 255 /usr/sbin/pam_extrausers_chkpwd; \
    chmod 755 /usr/bin/passwd  

USER $NGINX_RUN_USER