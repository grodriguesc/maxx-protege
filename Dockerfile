FROM node:16 AS compile-image

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM nginx:1.21.6

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=compile-image /app/dist /usr/share/nginx/html