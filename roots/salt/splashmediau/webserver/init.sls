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

/home/{{ grains['user'] }}/moodledata:
  file.directory:
    - user: {{ grains['user'] }}
    - group: {{ grains['group'] }}
    - makedirs: True