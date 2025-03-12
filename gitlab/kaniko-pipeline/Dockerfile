FROM node:18-slim
WORKDIR /app
COPY app/package*.json ./
RUN npm install --production && npm cache clean --force
COPY app/server.js ./
COPY .env ./
EXPOSE 3000
CMD ["node", "server.js"]