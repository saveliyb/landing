# Используем официальный образ Nginx в качестве базового
FROM nginx:alpine

# Удаляем стандартный файл конфигурации Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем наш файл конфигурации Nginx в контейнер
COPY nginx.conf /etc/nginx/conf.d

# Копируем все файлы вашего проекта в директорию Nginx
COPY . /usr/share/nginx/html

# Указываем порт, который будет использован Nginx
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
