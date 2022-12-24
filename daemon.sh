#!/bin/bash
pgrep caddy &> /dev/null
if [ $? -ne 0 ];then
        systemctl restart caddy   
fi
pgrep php-fpm &> /dev/null
if [ $? -ne 0 ];then
        systemctl restart php8.0-fpm   
fi
