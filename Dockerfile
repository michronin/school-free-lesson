FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Fix for https://github.com/yagop/node-telegram-bot-api/issues/319
ENV NTBA_FIX_319="FIX_FOR_https://github.com/yagop/node-telegram-bot-api/issues/319"

# define torly public url to set telegram webhook
ENV TORLY_PUBLIC_URL="https://api.torly.ml"


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]