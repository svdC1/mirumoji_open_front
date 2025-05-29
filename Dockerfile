# Alpine versions are smaller.
FROM node:22-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install --frozen-lockfile

# Copy source
COPY . .

# Build the application for production
RUN npm run build

EXPOSE 4173

# The '--' separates arguments for npm from arguments for the script.
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]
