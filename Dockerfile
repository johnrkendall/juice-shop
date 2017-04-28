# OWASP Juice Shop - An intentionally insecure Javascript Web Application
FROM            node:6-alpine
MAINTAINER      Bjoern Kimminich <bjoern.kimminich@owasp.org>
LABEL version = "3.0.0"

RUN apk update && apk add git

COPY . /juice-shop
WORKDIR /juice-shop
RUN npm install --production --unsafe-perm

EXPOSE  3000
CMD ["npm", "start"]
