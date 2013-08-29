include:
    - splashmedia.database

mysqladmin -u root create moodle:
    cmd.run:
        - unless: mysqlshow -u root "moodle" > /dev/null 2>&1