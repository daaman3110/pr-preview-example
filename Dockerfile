# Dockerfile
FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into the web root
COPY . /usr/share/nginx/html/

# Expose port 80 (optional, mostly for clarity)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
