@echo off

winpty docker run ^
--rm ^
--interactive ^
--tty ^
--network ant-dev ^
--volume %cd%:/app ^
--volume %userprofile%\.ant\npm:/tmp ^
sirpole/ant-dev:node npm-check-updates --loglevel verbose --packageFile package.json %*
