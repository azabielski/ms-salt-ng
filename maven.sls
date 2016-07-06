maven:
  archive:
    - extracted
    - name: c:/
    - source: salt://win/winfiles/apache-maven-3.3.9-bin.zip
    - archive_format: zip
    - if_missing: c:/apache-maven-3.3.9
