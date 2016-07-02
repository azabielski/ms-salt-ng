maven:
  {% set maven_dir = 'C:\apache-maven-3.3.9\bin' %}
  {% set env_path = salt['environ.get']('PATH') %}
  {% set env_path = env_path ~ ';' ~ maven_dir %}

  archive:
    - extracted
    - name: c:/
    - source: salt://win/winfiles/apache-maven-3.3.9-bin.zip
    - archive_format: zip
    - if_missing: c:/apache-maven-3.3.9
  environ.setenv
    - name: PATH
    - value: {{ env_path }}
    - update_minion: True
  cmd.run:
    - name: setx /M JAVA_HOME "c:\Program Files\Java\jdk1.8.0_91"
