#!/bin/bash

clear

# verifica se uglifyjs esta instalado
command -v uglifyjs >/dev/null 2>&1 || {
  echo 'uglifyjs requerido. Rode: sudo npm install uglify-js -g' >&2; exit 1;
}

# busca o caminho do script
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
jsDir="$scriptDir/javascript"

# limpa diretorio
rm -f ../www/*.*
rm -f ../www/@/*
echo -e "[ \e[01;30mOK\e[00m ] cache limpa..."

# compila js
# uglifyjs "$jsDir/jquery.stellar.min.js" "$jsDir/waypoints.min.js" "$jsDir/jquery.easing.1.3.js" "$jsDir/scripts.js" -o "$jsDir/../../www/@/scripts.min.js"
# echo "compilado >> scripts.min.js"

# publica arquivos
cp html/* ../www
cp imagens/* ../www/@
echo -e "[ \e[01;30mOK\e[00m ] arquivos estáticos publicados..."
compass compile


exit 0