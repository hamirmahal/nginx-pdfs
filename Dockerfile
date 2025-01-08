# Use the official Nginx image from Docker Hub.
# Copy the Nginx configuration file to the container
# Copy the PDFs directory to the container.
# Expose port 80.
FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d/
COPY PDFs/ /usr/share/nginx/html/PDFs/
EXPOSE 80
