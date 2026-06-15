# Use Node.js 18 Alpine as a lightweight runtime for the shipping service.
FROM node:18-alpine

# Set the application directory inside the container.
WORKDIR /app

# Copy package metadata first so dependency installation can be cached.
COPY package*.json ./

# Install dependencies declared by the starter project.
RUN npm install --production

# Copy the shipping service source code into the image.
COPY . .

# Keep the shipping service port aligned with the starter project's .env file.
ENV PORT=3001

# Point the shipping service to the RabbitMQ service name used by Docker Compose.
ENV AMQP_URL=amqp://rabbitmq:5672

# Document the HTTP port exposed by the shipping service.
EXPOSE 3001

# Start the service with the starter project's npm script.
CMD ["npm", "start"]
