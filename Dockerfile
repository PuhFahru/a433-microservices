# Use Node.js 14 as required by the project criteria.
FROM node:14

# Set the application working directory inside the container.
WORKDIR /app

# Copy the entire project source code into the container.
COPY . .

# Run the app in production mode and point it to the item-db service.
ENV NODE_ENV=production DB_HOST=item-db

# Install production dependencies and build the frontend assets.
RUN npm install --production --unsafe-perm && npm run build

# Expose the application port used in production mode.
EXPOSE 8080

# Start the application when the container runs.
CMD ["npm", "start"]
