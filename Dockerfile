# syntax=docker/dockerfile:1

From ubuntu:22.04
COPY skynet-admin/ /project/skynet-admin
COPY skynet-admin-web/dist/ /project/app
RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /project/entrypoint.sh
WORKDIR /project

EXPOSE 80
EXPOSE 8001

ENTRYPOINT ["sh", "entrypoint.sh"]
