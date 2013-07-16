include:
    - splashmedia.database

extend:
    Create database:
        cmd.run:
            - unless: mysqlshow -u root "splashcube" > /dev/null 2>&1