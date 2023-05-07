# Base image working on
FROM node:12
# Working directory source code
WORKDIR /app
# Copy the Package.json in current directory
COPY package*.json ./
# Install the Node Modules
RUN npm install
# Copy local files from directory. dockerignore ignores the current node modules
COPY . .
# Run the code on port 8080 via enviorment variable
ENV PORT=8080
# Open port 8080
EXPOSE 8080
# How to run the code via CLI
CMD ["npm", "start"]

