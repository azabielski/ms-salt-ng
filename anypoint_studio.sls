anypoint_studio:
  archive:
    - extracted
    - name: c:/
    {% if grains['cpuarch'] == 'AMD64' %}
    - source: salt://win/winfiles/AnypointStudio-for-win-64bit-6.0.0-201605161739.zip
    {% endif %}
    - archive_format: zip
    - if_missing: c:/AnypointStudio
