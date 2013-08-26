include:
    - splashmedia.database

extend:
    Create database:
        cmd.run:
            - unless: mysqlshow -u root "moodle" > /dev/null 2>&1