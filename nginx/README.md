### Simple log format for nginx1
        log_format  '$remote_addr - $remote_user [$time_local] '
                    '"$request" $status $body_bytes_sent '
                    '"$http_referer" "$http_user_agent"';
        access_log /var/log/nginx/access.log;
        error_log /var/log/nginx/error.log;

