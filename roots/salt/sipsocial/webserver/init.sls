include:
    - splashmedia.webserver

/etc/nginx/conf.d/sipsocial.conf:
    file:
        - managed
        - source: salt://sipsocial/webserver/sipsocial.vhost
        - template: jinja
        - require:
            - pkg: nginx
            - pkg: php5-fpm

graphicsmagick:
    pkg:
        - installed

Install grunt-cli:
    cmd:
        - run
        - name: npm install -g grunt-cli

Install node packages:
    cmd.run:
        - name: npm install
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - pkg: nodejs
            - pkg: graphicsmagick

grunt:
    cmd.run:
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - cmd: Install node packages
            - cmd: Install grunt-cli