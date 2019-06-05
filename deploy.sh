#!/bin/sh

ssh root@neprivet.ru "mkdir -p /var/www/neprivet.ru"
scp -r public root@neprivet.ru:/var/www/neprivet.ru/
scp neprivet.ru.conf root@neprivet.ru:/etc/nginx/sites-available/
ssh root@neprivet.ru "ln -sf /etc/nginx/sites-available/neprivet.ru.conf /etc/nginx/sites-enabled/neprivet.ru.conf; service nginx configtest & service nginx restart"
