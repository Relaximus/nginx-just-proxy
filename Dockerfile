FROM nginx:stable-alpine-slim

ENV TARGET_HOST=example.com
ENV TARGET_PORT=8080
ENV TARGET_PROTOCOL=http
ENV SOURCE_PORT=8181

COPY ./docker-start.sh .
CMD ./docker-start.sh

