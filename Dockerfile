FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
LABEL org.opencontainers.image.source=https://github.com/ghnashymsatote/node-cicd-deploy
EXPOSE 8080
CMD ["node", "index"]