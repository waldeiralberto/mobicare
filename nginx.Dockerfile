FROM nginx

COPY nginx.conf /etc/nginx/

CMD [ "nginx" ]