#!/usr/bin/env bash
# Ejecución en Linux/Mac o GitHub Codespaces (plan B de ejecutar.bat)
cd "$(dirname "$0")"
echo "Compilando CreoWaze+..."
rm -rf out
javac -encoding UTF-8 -d out src/*.java || { echo "Error al compilar. Se necesita Java 17+"; exit 1; }
echo "Iniciando servidor en el puerto 8080..."
java -Dfile.encoding=UTF-8 -cp out Main
