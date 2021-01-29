FROM nginx:1.18.0-alpine

WORKDIR /usr/share/nginx/

RUN apk add git && rm -Rf html && git clone https://github.com/mread998/marcread-resume-site.git && mv marcread-resume-site html && chown -R nginx:nginx html/

WORKDIR /usr/share/nginx/html



