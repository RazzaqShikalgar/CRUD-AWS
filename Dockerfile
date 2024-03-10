# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code into the container at /usr/src/app
COPY . .

# Expose port 3000 (or any other port your Node.js application listens on)
EXPOSE 3000

# Command to run the Node.js application
CMD ["node", "app.js"]
