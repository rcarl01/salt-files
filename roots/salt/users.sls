{{ grains['user'] }}:
    user.present:
        - require:
            - group: {{ grains['group'] }}
        - groups:
            - {{ grains['group'] }}
            - admin

{{ grains['group'] }}group:
    group.present:
        - name: {{ grains['group'] }}