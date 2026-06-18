# Stage 1 – Build: Copy static website assets
FROM nginx:alpine

# Maintainer label
LABEL maintainer="praveen-ct" \
      project="devops2exp" \
      description="Tripillar Solutions static website served via Nginx"

# Remove default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files into Nginx's serving directory
COPY src/main/resources/index.html  /usr/share/nginx/html/index.html
COPY src/main/resources/style.css   /usr/share/nginx/html/style.css


# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
