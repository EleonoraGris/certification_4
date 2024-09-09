# Используем базовый образ с Python
FROM python:3.10-slim

# Устанавливаем необходимые библиотеки
RUN pip install pandas

# Копируем файлы в контейнер
COPY data.csv /app/data.csv
COPY app.py /app/app.py

# Устанавливаем рабочую директорию
WORKDIR /app

# Запускаем скрипт при старте контейнера
CMD ["python", "app.py"]

