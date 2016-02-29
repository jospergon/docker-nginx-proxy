#!/bin/bash

sed -i "s/UPSTREAM_SERVER/$UPSTREAM_SERVER/g" /etc/nginx/nginx.conf
sed -i "s/UPSTREAM_PORT/$UPSTREAM_PORT/g" /etc/nginx/nginx.conf
nginx -g "daemon off;"
