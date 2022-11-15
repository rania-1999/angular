
# Use official nginx image as the base image
FROM nginx:1.15.12

# Copy the build output to replace the default nginx contents.
COPY . /usr/share/nginx/html

# Expose port 75
EXPOSE 75
