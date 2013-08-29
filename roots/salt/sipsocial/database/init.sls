include:
    - splashmedia.database
    - splashmedia.database.doctrine_migrations

extend:
    Create database:
        cmd.run:
            - unless: mysqlshow -u root "splashcube" > /dev/null 2>&1
