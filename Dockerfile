FROM node:16.3.0 as node
WORKDIR    /app
COPY . .
RUN npm install
RUN npm run build


# Use official nginx image as the base image
FROM nginx:1.15.12

# Copy the build output to replace the default nginx contents.
COPY /usr/local/app/dist/crudtuto-front /usr/share/nginx/html

# Expose port 75
EXPOSE 75
