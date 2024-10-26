#!/bin/bash

STAGE_TYPE=$1
BOT_TOKEN="7134872079:AAFkAfAibx6Bq4CVI9iRqIXchAWo-AlX3Nk"
CHAT_ID="1157668163"

sleep 5

# Проверяем, существуют ли переменные CI_JOB_STATUS, CI_JOB_NAME и CI_PROJECT_URL
if [ -z "$CI_JOB_STATUS" ] || [ -z "$CI_JOB_NAME" ] || [ -z "$CI_PROJECT_URL" ]; then
    echo "Ошибка: переменные CI_JOB_STATUS, CI_JOB_NAME или CI_PROJECT_URL не определены."
    exit 1
fi

if [ "$CI_JOB_STATUS" == "success" ]; then
    MESSAGE="Стадия $STAGE_TYPE $CI_JOB_NAME успешно завершина $CI_PROJECT_URL/pipelines"
else
    MESSAGE="Стадия $STAGE_TYPE $CI_JOB_NAME завершилась с ошибкой $CI_PROJECT_URL/pipelines"
fi

curl -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d chat_id=$CHAT_ID -d text="$MESSAGE"