# Base image
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy application files
COPY . .

# Build the application
RUN npm run build

# Expose port and run
EXPOSE 3000
CMD ["npm", "start"]

