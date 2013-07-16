nginx:
    pkg:
        - installed
        - sources:
            - nginx: https://github.com/johntron/nginx-debian/releases/1.5.2-1/2897/nginx_1.5.2-1.raring_amd64.deb
    service:
        - running
        - watch:
            - file: /etc/nginx/conf.d/*
            - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf:
    file:
        - managed
        - source: salt://nginx/nginx.conf
        - template: jinja

/etc/php5/fpm/pool.d/www.conf:
    file:
        - managed
        - source: salt://nginx/www.conf
        - template: jinja