## Dockle Doc
[information](https://github.com/goodwithtech/dockle)
## Help dockle comand
- для скрытия предупреждения касающихся самого образа nginx : FATAL - CIS-DI-0010: Не сохранять учетные данные в переменных/файлах окружения
```
    dockle -ak GPG_KEY -ak KEYCLOAK_VERSION -ak NGINX_GPGKEY -ak  NGINX_GPGKEY_PATH mini-server:3.0
```