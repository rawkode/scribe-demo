FROM cgr.dev/chainguard/node:latest

WORKDIR /app

COPY --chown=node:node package.json package-lock.json ./
RUN npm install

COPY --chown=node:node server.js .

CMD ["npm", "start"]