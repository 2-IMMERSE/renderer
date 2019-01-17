#!/bin/sh
set -ex

sed -i "s|^\([[:blank:]]*\)var VERSION =.*$|\1var VERSION = \"${VERSION:=v4}\";|" /var/lib/nginx/html/index.html
sed -i "s|^\([[:blank:]]*\)var layoutServer =.*$|\1var layoutServer = \"${LAYOUT:=https://layout-service.platform.2immerse.eu/layout/}\" + VERSION;|" /var/lib/nginx/html/index.html
sed -i "s|^\([[:blank:]]*\)var websocketServer =.*$|\1var websocketServer = \"${WEBSOCKET:=https://websocket-service.platform.2immerse.eu/layout}\";|" /var/lib/nginx/html/index.html

nginx