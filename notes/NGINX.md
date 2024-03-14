## NGINX snippets


### Articles
- [Guide to Downloading and Using NGINX as a Load Balancer](https://medium.com/@jonathantan12/guide-to-downloading-and-using-nginx-as-a-load-balancer-cfb3bf5d6ab8)



```
server {
    listen       api.domain.com:8000;
    server_name  api.domain.com;
    location / {
        proxy_pass http://127.0.0.1:8000;
    }
}
```
