FROM node:10


# Create app directory
WORKDIR /usr/src/app


# Install app dependencies

COPY package*.json ./
RUN npm install


# Bundle app source
COPY . .


# Expose port
EXPOSE 8080


# Start service
CMD [ "npm", "start" ]