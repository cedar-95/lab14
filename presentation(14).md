---
marp: true
theme: default
paginate: true
footer: 'Лабораторная работа №14 · НПИбд-03-25, Чжу Ино'
style: |
  section {
    font-family: "Times New Roman", serif;
    font-size: 24px;
    padding: 50px 70px;
    line-height: 1.5;
    color: #1a1a1a;
  }
  h1 {
    font-size: 38px;
    color: #003366;
    border-bottom: 3px solid #003366;
    padding-bottom: 10px;
    margin-bottom: 20px;
  }
  h2 {
    font-size: 30px;
    color: #003366;
    margin-bottom: 15px;
  }
  ul {
    margin-top: 10px;
  }
  li {
    margin-bottom: 8px;
  }
  section.lead {
    text-align: center;
    justify-content: center;
  }
  section.lead h1 {
    border: none;
    font-size: 46px;
    margin-bottom: 40px;
  }
  section.lead p {
    font-size: 26px;
    margin: 6px 0;
  }
  section.chapter {
    text-align: center;
    justify-content: center;
    background: #f4f7fb;
  }
  section.chapter h1 {
    border: none;
    font-size: 44px;
  }
  footer {
    font-size: 14px;
    color: #666;
  }
---

<!-- _class: lead -->

# Лабораторная работа №14. Взаимодействие процессов. Семафоры

НПИбд-03-25, Чжу Ино

---

# Содержание

1. Титульный слайд
2. Введение
3. Реализация семафоров
4. Реализация команды man
5. Генерация случайных чисел
6. Контрольный вопрос
7. Заключение
8. Список литературы

---

<!-- _class: chapter -->

# 1. Титульный слайд

---

- Лабораторная работа №14
- Взаимодействие процессов. Семафоры
- Реализация команды man. Генерация случайных чисел
- НПИбд-03-25
- Чжу Ино

---

<!-- _class: chapter -->

# 2. Введение

---

- Изучение механизма семафоров
- Реализация собственной команды man
- Генерация случайных последовательностей букв

---

<!-- _class: chapter -->

# 3. Реализация семафоров

---

- Файл: `semaphore.sh`
- Принцип работы:
  - Семафор — файл `/tmp/semaphore.lock`
  - t1 = 10 секунд (ожидание)
  - t2 = 5 секунд (использование)
  - Цикл: проверка → захват → использование → освобождение

---

<!-- _class: chapter -->

# 4. Реализация команды man

---

- Файл: `man.sh`
- Поиск справки в `/usr/share/man/man1`
- Путь: `$CMD.1.gz`
- Распаковка: `gunzip -c "$PAGE" | cat`
- Результат: вывод справки или сообщение «Справка не найдена»

---

<!-- _class: chapter -->

# 5. Генерация случайных чисел

---

- Файл: `random.sh`
- `$RANDOM` → 0–32767
- `% 26` → индекс буквы 0–25
- `97 + idx` → ASCII-код 'a'-'z'
- `printf` → преобразование в символ
- Результат: 20 случайных букв

---

<!-- _class: chapter -->

# 6. Контрольный вопрос

---

**Вопрос:** Найдите ошибку в строке `while [$1 != "exit"]`

**Ответ:**
- Ошибка: Отсутствуют пробелы вокруг квадратных скобок
- Правильный вариант: `while [ "$1" != "exit" ]`
- Объяснение: В bash команда `[` требует пробелов после себя и перед `]`

---

<!-- _class: chapter -->

# 7. Заключение

---

- Реализован упрощённый механизм семафоров на основе файла-флага
- Создана собственная реализация команды man
- Освоена генерация случайных последовательностей букв
- Исправлена синтаксическая ошибка в условии цикла `while`

---

<!-- _class: chapter -->

# 8. Список литературы

---

1. Neil N. J. Learning CentOS: A Beginners Guide to Learning Linux. — CreateSpace Independent Publishing Platform, 2016.
2. Vugt S. van. Red Hat RHCSA/RHCE 7 cert guide. — Pearson IT Certification, 2016.
3. Unix и Linux: руководство системного администратора / Э. Немет и др. — 5-е изд. — СПб. : ООО «Диалектика», 2020.