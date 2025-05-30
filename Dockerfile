# ---- Build Stage ----
# Use a Node.js image to build your Vite project
FROM node:22-alpine AS builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the Vite project
RUN npm run build

# ---- Serve Stage ----
# Use an Nginx image to serve the built application
FROM nginx:1.25-alpine

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copy the built static assets from the 'builder' stage
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80 (which Nginx listens on by default)
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]