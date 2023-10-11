# Use the official WordPress image as the base image
FROM wordpress:latest

# Set the maintainer label
LABEL maintainer="Your Name <your@email.com>"

# Expose port 80 for HTTP
EXPOSE 80

# Copy a custom php.ini file to configure PHP settings (optional)
# COPY php.ini /usr/local/etc/php/conf.d/php.ini

# You can add additional configurations and plugins here

# Copy your custom themes and plugins to the WordPress themes and plugins directories
# COPY my-themes/ /var/www/html/wp-content/themes/
# COPY my-plugins/ /var/www/html/wp-content/plugins/

# Set environment variables to configure WordPress
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=your_db_user
ENV WORDPRESS_DB_PASSWORD=your_db_password
ENV WORDPRESS_DB_NAME=your_db_name

# Healthcheck to ensure WordPress is running
HEALTHCHECK --interval=30s CMD curl -f http://localhost || exit 1
