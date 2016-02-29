#!/bin/bash

echo $UPSTREAM_SERVER

sed "s/UPSTREAM_SERVER/$UPSTREAM_SERVER/g" /etc/nginx/nginx.conf
nginx -g "daemon off;"
