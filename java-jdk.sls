jre8:
  '8.0.910.15':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Java SE Development Kit 8 Update 91 (64-bit)'
    installer: 'salt://win/winfiles/java/jdk-8u91-windows-x64.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418091F0} /norestart'
    {% elif grains['cpuarch'] == 'x86' %}
    full_name: 'Java SE Development Kit 8 Update 91'
    installer: 'salt://win/winfiles/java/jdk-8u91-windows-i586.exe'
    uninstall_flags: '/qn /x {26A24AE4-039D-4CA4-87B4-2F86418091F0} /norestart'
    {% endif %}
    install_flags: '/s REBOOT=Suppress SPONSORS=0 ADDLOCAL="ToolsFeature,SourceFeature"'
    uninstaller: 'msiexec'
    msiexec: False
    locale: en_US
    reboot: False
