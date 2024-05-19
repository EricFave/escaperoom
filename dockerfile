FROM node:latest
WORKDIR /app
RUN npm install -g json-server
COPY db.json .
EXPOSE 3000
CMD ["npx","json-server","--watch", "db.json", "--port", "3000", "--host", "0.0.0.0"]
