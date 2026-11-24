@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo Compilando CreoWaze+...
if exist out rmdir /s /q out
javac -encoding UTF-8 -d out src\*.java
if errorlevel 1 (
  echo.
  echo Error al compilar. Revisa que tengas instalado Java 17 o superior ^(JDK^).
  pause
  exit /b 1
)
echo Iniciando servidor...
start "" http://localhost:8080/
java -Dfile.encoding=UTF-8 -Dstdout.encoding=UTF-8 -cp out Main
pause
