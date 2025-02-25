@echo off

:: Opening and browsing directory
:main
    mkdir "local"
    mkdir "domain"
    mkdir "function"
    mkdir "DNS"
    mkdir "LDAP"
    mkdir "DB"
    goto server

:server
    cd "DNS"
    if not exist "dns.py" (
        echo. > dns.py
        echo "dns.py created."
    ) else (
        echo "dns.py already exists."
    )
    cd ..

    cd "LDAP"
    if not exist "ldap.py" (
        echo. > ldap.py
        echo "ldap.py created."
    ) else (
        echo "ldap.py already exists."
    )
    cd ..

:input
    cmd
pause > nul
