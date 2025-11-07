# FROM node:16-alpine

# RUN npm install -g nodemon

# WORKDIR /app

# COPY package.json .

# RUN npm install

# EXPOSE 4000

# CMD ["npm", "run", "dev"]
 
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install -g nodemon

RUN npm install

# Copy all files (including app.js)
COPY . .

# Expose the port your app runs on
EXPOSE 4000

# Command to start the app in dev mode
CMD ["npm", "run", "dev"]
