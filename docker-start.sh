cat > /etc/nginx/conf.d/default.conf <<EOF
server {
    listen       $SOURCE_PORT;

    location / {
        proxy_pass $TARGET_PROTOCOL://$TARGET_HOST:$TARGET_PORT;
    }
}
EOF

echo "Starting nginx"
/docker-entrypoint.sh nginx -g "daemon off;"