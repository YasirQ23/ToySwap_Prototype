# Use an official nginx image
FROM nginx:alpine

# Remove the default nginx HTML file
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the nginx serve directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]