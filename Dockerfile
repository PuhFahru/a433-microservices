# Use Node.js 18 Alpine as a lightweight runtime for the order service.
FROM node:18-alpine

# Set the application directory inside the container.
WORKDIR /app

# Copy package metadata first so dependency installation can be cached.
COPY package*.json ./

# Install dependencies declared by the starter project.
RUN npm install --production

# Copy the order service source code into the image.
COPY . .

# Keep the order service port aligned with the starter project's .env file.
ENV PORT=3000

# Point the order service to the RabbitMQ service name used by Docker Compose.
ENV AMQP_URL=amqp://rabbitmq:5672

# Document the HTTP port exposed by the order service.
EXPOSE 3000

# Start the service with the starter project's npm script.
CMD ["npm", "start"]
