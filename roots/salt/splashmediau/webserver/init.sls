include:
    - splashmedia.webserver

/etc/nginx/conf.d/splashmediau.conf:
    file:
        - managed
        - source: salt://splashmediau/webserver/vhost
        - template: jinja
        - require:
            - pkg: nginx
            - pkg: php5-fpm
