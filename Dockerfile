FROM nginx
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com" -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
RUN rm /etc/nginx/conf.d/default.conf
COPY conf /etc/nginx/conf.d/default.conf

