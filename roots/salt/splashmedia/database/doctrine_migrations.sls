Create database:
    cmd.run:
        - name: ./app/console doctrine:database:create
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - cmd: Install dependencies
            - pkg: mysql-server
            - pkg: php5-cli
            - pkg: php5-mysql

Run migrations:
    cmd.run:
        - name: ./app/console doctrine:migrations:migrate --no-interaction
        - cwd: /home/{{ grains['user'] }}/shared
        - user: {{ grains['user'] }}
        - group: {{ grains['group'] }}
        - require:
            - cmd: Create database
