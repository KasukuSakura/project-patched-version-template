@echo off

set TMP_CD=%cd%

cd %~dp0%\..\SubProject
git reset --keep HEAD
git add -N .
git diff --output ../patchs.patch

set TMP_ER=%ERRORLEVEL%
cd %TMP_CD%
exit /b %TMP_ER%
