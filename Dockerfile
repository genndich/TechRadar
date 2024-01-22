# Используйте официальный образ Node.js
FROM node:12

# Установите рабочую директорию в контейнере
WORKDIR /usr/src/app

# Копируйте package.json и package-lock.json (если есть)
COPY package*.json ./

# Установите зависимости проекта
RUN npm install

# Копируйте исходный код проекта в контейнер
COPY . .

# Откройте порт 3000 для связи с приложением
EXPOSE 3000

# Запустите приложение
CMD [ "npm", "start" ]
