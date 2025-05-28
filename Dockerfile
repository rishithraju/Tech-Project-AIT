# Use official nginx Alpine image
FROM nginx:alpine

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into the container
COPY . /usr/share/nginx/html

# Copy custom nginx config from conf/
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
