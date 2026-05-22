#!/bin/bash

SEMAPHORE="/tmp/semaphore.lock"
WAIT_TIME=10
USE_TIME=5

echo "Студент: Чжу Ино"
echo "PID: $$"

if [ "$1" = "privileged" ]; then
    echo "=== Привилегированный режим ==="
fi

for ((i=1; i<=WAIT_TIME; i++)); do
    if [ ! -f "$SEMAPHORE" ]; then
        echo "$(date): Ресурс свободен, захватываю"
        touch "$SEMAPHORE"
        echo "$$" > "$SEMAPHORE"
        
        echo "$(date): Использую ресурс ${USE_TIME} сек"
        sleep $USE_TIME
        
        rm -f "$SEMAPHORE"
        echo "$(date): Ресурс освобождён"
        exit 0
    fi
    echo "$(date): Ожидание ($i сек)..."
    sleep 1
done

echo "$(date): Таймаут ${WAIT_TIME} сек"
exit 1
