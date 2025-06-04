#use node image as the base.
FROM node:24-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Svelte app
RUN npm run build

#Clean up after the build, no longer need the src, etc files. 
RUN rm -rf src/ static/

# Expose the port
EXPOSE 3000

# Command to run the app
# ENV variables should be set in the docker-compose file!
# Default port with "node build" is 3000
CMD ["node", "build"]

