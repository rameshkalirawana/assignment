FROM nginx:alpine

ENV web=dev

COPY nginx.tmpl /etc/nginx/conf.d/nginx.tmpl
RUN mkdir -p /usr/share/nginx/html/dev
RUN mkdir -p /usr/share/nginx/html/prod
ADD index2.html /usr/share/nginx/html/dev
ADD index.html /usr/share/nginx/html/prod
RUN mv /usr/share/nginx/html/dev/index2.html /usr/share/nginx/html/dev/index.html


CMD /bin/sh -c "envsubst < /etc/nginx/conf.d/nginx.tmpl > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;' || cat /etc/nginx/conf.d/default.conf"
