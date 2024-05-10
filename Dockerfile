# Use the official Alpine Linux as base image
FROM alpine:latest

# Install Hugo
RUN apk add --no-cache hugo

# Set the working directory inside the container
WORKDIR /site

# Copy the source files of your Hugo website into the container
COPY . .

# Expose port 1313 (default Hugo port) for serving the site
# EXPOSE 80
EXPOSE 1313

# Build the static site when the container starts
CMD ["hugo", "server", "--bind", "0.0.0.0"]
# "--baseURL=http://0.0.0.0:1313/",