FROM nginx

COPY app.conf /etc/nginx/conf.d

CMD [ "nginx" ]