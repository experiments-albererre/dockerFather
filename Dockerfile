FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y git
RUN git clone https://github.com/experiments-albererre/docker-website-init.git
RUN mkdir /var/www/html/js
RUN mkdir /var/www/html/css
RUN mv docker-website-init/index.html /var/www/html/index.html
RUN mv docker-website-init/js/index.js /var/www/html/js/index.js
RUN mv docker-website-init/css/index.css /var/www/html/css/index.css
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
