maven:
  archive:
    - extracted
    - name: c:/
    - source: salt://win/winfiles/apache-maven-3.3.9-bin.zip
    - archive_format: zip
    - if_missing: c:/apache-maven-3.3.9
  cmd.run:
    - names: 
      - setx /M PATH "%PATH%;c:\apache-maven-3.3.9\bin;c:\Program Files\Java\jdk1.8.0_91\bin"
      - setx /M JAVA_HOME "c:\Program Files\Java\jdk1.8.0_91"
  cmd.run:
    - name: shutdown -f -r -t 30 -c "Your PC will reboot in the next 30 seconds to finish the salt state."
