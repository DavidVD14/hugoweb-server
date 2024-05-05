# Base Docker image
FROM httpd:latest

# Copy web app files to the root of the Apache server
COPY ./webapp  /usr/local/apache2/htdocs/

# Expose port 80 for HTTP Traffic
EXPOSE 80