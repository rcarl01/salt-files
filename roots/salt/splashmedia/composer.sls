Install composer:
    cmd.run:
        - name: curl -sS https://getcomposer.org/installer | php
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - pkg: php5-cli
            - pkg: curl

Install dependencies:
    cmd.run:
        - name: ./composer.phar install {% if grains['env'] == 'dev' %}--dev{% endif %}
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - cmd: Install composer
            - pkg: php5-curl