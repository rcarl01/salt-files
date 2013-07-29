include:
    - apt

insert_dotdeb_key:
  cmd.wait:
    - name: apt-key adv --keyserver keys.gnupg.net --recv-keys E9C74FEEA2098A6E
    - unless: apt-key adv --list-keys E9C74FEEA2098A6E
    - watch:
      - file: /etc/apt/sources.list.d/dotdeb.org.list
    - require_in:
      - pkg: php
      - pkg: php5-fpm
      - pkg: php5-memcached
      - pkg: mysql-server
      - cmd: "apt-get update"

/etc/apt/sources.list.d/dotdeb.org.list:
  file.managed:
    - mode: 0644
    - user: root
    - group: root
    - source: salt://dotdeb/dotdeb.org.list