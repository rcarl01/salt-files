include:
    - nginx
    - nodejs

php5-fpm:
    pkg:
        - installed
    service:
        - running
        - watch:
            - file: /etc/php5/fpm/pool.d/*
            - file: /etc/php5/conf.d/*

/etc/nginx/conf.d/default.conf:
    file:
        - absent

/etc/nginx/conf.d/example_ssl.conf:
    file:
        - absent

memcached:
    pkg:
        - installed
    service:
        - running

php5-memcached:
    pkg:
        - installed