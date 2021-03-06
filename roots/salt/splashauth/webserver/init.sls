include:
    - splashmedia.webserver

/etc/nginx/conf.d/splashauth.conf:
    file:
        - managed
        - source: salt://splashauth/webserver/vhost
        - template: jinja
        - require:
            - pkg: nginx
            - pkg: php5-fpm