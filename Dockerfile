# Stage 1: Build the Hugo site
FROM alpine:latest AS hugo-builder

# Install Hugo
RUN apk add --no-cache hugo

# Set the working directory inside the container
WORKDIR /site

# Copy the source files of your Hugo website into the container
COPY . .

# Build the static site
RUN hugo

# Stage 2: Serve the site with Caddy
FROM caddy:latest

# Copy the built site from the previous stage
COPY --from=hugo-builder /site/public /srv

# Expose ports 80 and 443 (default HTTP and HTTPS ports for Caddy)
EXPOSE 80

# Create a Caddyfile for the configuration
COPY Caddyfile /etc/caddy/Caddyfile

# Start Caddy server
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]