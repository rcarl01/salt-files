base:
    '*':
    - packages
    - php
    - users
    - splashauth

    'G@roles:webserver':
    - match: compound
    - splashauth.webserver

    'G@roles:database':
    - match: compound
    - splashauth.database