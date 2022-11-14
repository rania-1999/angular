

# Stage 2: Serve app with nginx server

# Use official nginx image as the base image
FROM nginx:latest

# Copy the build output to replace the default nginx contents.
COPY --from=build /usr/local/app/dist/crudtuto-front /usr/share/nginx/html

# Expose port 75
EXPOSE 75