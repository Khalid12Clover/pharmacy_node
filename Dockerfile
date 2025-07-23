# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /pharmacy

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port your app runs on
EXPOSE 7000

# Start the app
CMD ["node", "app.js"]
