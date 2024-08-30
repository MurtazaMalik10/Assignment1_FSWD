# Use the official Nginx image from the Docker Hub

FROM nginx:alpine



# Copy the HTML and CSS files to the Nginx HTML directory

COPY index.html /usr/share/nginx/html/index.html

COPY styles.css /usr/share/nginx/html/styles.css



# Expose port 80 to the outside world

EXPOSE 80



# Start Nginx and keep it running in the foreground

CMD ["nginx", "-g", "daemon off;"]


