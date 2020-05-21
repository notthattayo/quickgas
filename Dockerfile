FROM nginx:alpine
#COPY . /usr/share/nginx/html
# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

#ADD web /usr/share/nginx/html/
COPY . /usr/share/nginx/html
#ADD web /var/www/html/

# Append "daemon off;" to the beginning of the configuration
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
#CMD service nginx start
