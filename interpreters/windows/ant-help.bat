@echo off

echo Usage:
echo     ant [tool] (arguments)
echo.
echo Tools:
echo     build      - Builds custom images locally, usually not necessary
echo     down       - Stop and destroy running containers
echo     export     - Exports database to sql file
echo         Usage: ant export [database] (path to target directory, defaults to .)
echo     help       - Show this help
echo     import     - Import database from SQL dump to existing or newly created database
echo         Usage: ant import (database) [path to sql file]
echo     init       - Initialize docker-compose.yml in current directory, can switch php version, 7.3 is default
echo         Usage: ant init (5.6^|7.1^|7.2)
echo     reload     - Restarts all containers, equivalent of calling 'ant down ^&^& ant up'
echo     migrate    - Migrate database using doctrine
echo     selfupdate - Update ant-dev
echo     start      - Alias for 'up'
echo     stop       - Alias for 'down'
echo     up         - Start containers if they're not running already
echo     version    - Shows versions of all key services
echo.
echo Other standalone interpreters, these are not prefixed by ant command:
echo     composer
echo     mysql
echo     ncu
echo     node
echo     npm
echo     npx
echo     php
echo     sass-lint
echo     tldr
echo.
echo For more thorough information, visit repository wiki: https://github.com/SirPole/ant-dev/wiki
