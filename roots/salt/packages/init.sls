include:
    - dotdeb

php5-cli:
    pkg:
        - installed

php5-curl:
    pkg:
        - installed

php5-mysql:
    pkg:
        - installed

php:
    pkg.installed:
        - pkgs:
            - php5
            - php5-xdebug

/etc/php5/conf.d/php.ini:
    file:
        - managed
        - source: salt://packages/php.ini
        - require:
            - pkg: php

curl:
    pkg:
        - installed

git:
    pkg:
        - installed

sendmail:
    service:
        - dead
    pkg:
        - purged

apache2:
    service:
        - dead
    pkg:
        - purged