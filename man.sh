#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Использование: $0 <команда>"
    echo "Студент: Чжу Ино"
    exit 1
fi

MAN_DIR="/usr/share/man/man1"
CMD="$1"
PAGE="$MAN_DIR/$CMD.1.gz"

if [ -f "$PAGE" ]; then
    gunzip -c "$PAGE" | cat
else
    echo "Справка для команды '$CMD' не найдена"
    exit 1
fi
