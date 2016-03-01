# docker-nginx-proxy
Docker nginx image. Nginx as reverse proxy to use it with for example a Rails application with web servers as puma, unicorn or thin.

# docker-compose.yml.sample

This file contain an example that you can use to run the container with docker-compose, as well as the environment variables you can use to config the nginx proxy.

```
proxy:
  image: jospergon/docker-nginx-proxy
  environment:
    UPSTREAM_SERVER: web_server_ip
    UPSTREAM_PORT: web_server_port
  ports:
    - "80:80"
```
