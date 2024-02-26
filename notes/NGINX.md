## NGINX snippets


```
server {
    listen       api.domain.com:8000;
    server_name  api.domain.com;
    location / {
        proxy_pass http://127.0.0.1:8000;
    }
}
```
