### My experience through nginx, some important commands & confs

```
        log_format custom '$remote_addr - $remote_user [$time_local] '
                    '"$request" $status $body_bytes_sent '
                    '"$http_referer" "$http_user_agent"';
        access_log /var/log/nginx/access.log custom;
        error_log /var/log/nginx/error.log warn;
```

### Or

```
http {
    log_format compression '$remote_addr - $remote_user [$time_local] '
                           '"$request" $status $body_bytes_sent '
                           '"$http_referer" "$http_user_agent" "$gzip_ratio"';

    server {
        gzip on;
        access_log /spool/logs/nginx-access.log compression;
        ...
    }
}
```

#### we could use log format name to use it in some other parts.

#### we could remove server version from our responses by enabling: (hardening)

```
server_tokens off;
```

#### when we want to pass users real ip to our servers:

```
proxy_set_header X-Real-IP       $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
```

#### HTTP Strict Transport Security (HSTS):

```
add_header Strict-Transport-Security “max-age=31536000; includeSubDomains” always;
```

#### Auto index for static file serving:

```
autoindex on;
```

#### Basic auth using apache2-utils htpasswd:

```
auth_basic "administrator's Area";
auth_basic_user_file /etc/nginx/conf.d/test.htpasswd;
$ htpasswd -c /etc/nginx/conf.d/test.htpasswd USER
```