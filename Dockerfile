FROM node:current

# Set the working directory inside the container
WORKDIR /home/node

# Copy package.json and package-lock.json into the container
COPY package.json package-lock.json /home/node/

# Install dependencies
RUN npm install

# Copy the entire application code into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Start the application using npm start (ensure start script points to bin/www or the appropriate entry point)
CMD ["npm", "start"]