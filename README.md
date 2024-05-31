# nginx-just-proxy - Super Stupid Simple proxy

The list of environment variables to set:
```
ENV TARGET_HOST=example.com
ENV TARGET_PORT=8080
ENV TARGET_PROTOCOL=http
ENV SOURCE_PORT=8181
```

To run:
```commandline
docker run -e TARGET_HOST=172.0.0.1 -e TARGET_PORT=8080 -e SOURCE_PORT=9090 -p 9090:9090 nginx-just-proxy
```
your 172.0.0.1:8080 is going to be available by localhost:9090 after starting docker.
