# Use the latest official Node.js image as the base image
FROM node:latest
 
# Set the working directory inside the container
WORKDIR /usr/src/app
 
# Copy package.json 
COPY package*.json ./
 
# Install the dependencies
RUN npm install
 
# Copy the rest of the application code to the working directory
COPY . .
 
# Expose the port your app runs on
EXPOSE 3000
 
# Define the command to run your application
CMD ["npm", "start"]
