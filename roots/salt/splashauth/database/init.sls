include:
    - splashmedia.database

extend:
    Create database:
        cmd.run:
            - unless: mysqlshow -u root "splashauth" > /dev/null 2>&1