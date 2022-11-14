
# Use official node image as the base image
FROM node:16.3.0-alpine as build

# Set the working directory
WORKDIR /usr/local/app

# Add the source code to app
COPY ./ /usr/local/app/

# Install all the dependencies
RUN npm install

# Generate the build of the application
RUN npm run build


# Stage 2: Serve app with nginx server

# Use official nginx image as the base image
FROM nginx:1.17.1-alpine

# Copy the build output to replace the default nginx contents.
COPY --from=build /usr/local/app/dist/crudtuto-front /usr/share/nginx/html

# Expose port 75
EXPOSE 75
