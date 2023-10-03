# Use the official Swagger UI image as the base image
FROM swaggerapi/swagger-ui

# Copy your custom configuration file into the image
COPY src/custom-config.js /usr/share/nginx/html/swagger-ui/custom-swagger-config.js
COPY src/custom-index.html /usr/share/nginx/html/index.html
# Replace the default Swagger UI configuration with your custom configuration
RUN echo "window.swaggerUi.loadConfig(customConfig);" >> /usr/share/nginx/html/swagger-ui/index.html
