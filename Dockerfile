FROM node:12.13-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install npm packages
RUN npm install

# Bundle app source
COPY . .

# Build our app for production
 RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "build" ]