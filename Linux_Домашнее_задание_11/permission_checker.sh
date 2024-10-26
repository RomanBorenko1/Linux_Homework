#!/bin/bash
DIRECTORY_MAY=/opt/290724-ptm
echo 'Выводим список прав на файлы внутри директории' $DIRECTORY_MAY
ls -la "$DIRECTORY_MAY"

if [ -d "$DIRECTORY_MAY" ]; then
    if find "$DIRECTORY_MAY" -type f -name "*.sh" | grep -q .; then
        echo 'добавлены права для всех скриптов .sh'
        find "$DIRECTORY_MAY" -type f -name "*.sh" -exec chmod +x {} \;
    else
        echo 'Нет файлов с расширением .sh'
    fi
else
    echo "$DIRECTORY_MAY не найдена"
fi

