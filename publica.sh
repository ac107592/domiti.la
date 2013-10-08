#!/bin/bash

clear

# verifica se uglifyjs esta instalado
command -v uglifyjs >/dev/null 2>&1 || {
  echo 'uglifyjs requerido. Rode: sudo npm install uglify-js -g' >&2; exit 1;
}

# busca o caminho do script
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
jsDir="$scriptDir/javascripts"

# limpa diretorio
rm -f ../www/*.*
rm -f ../www/@/*
echo -e "[ \e[01;30mOK\e[00m ] cache limpa..."

# compila js
uglifyjs "$jsDir/mobile.js" "$jsDir/smooth-scroll.js" -o "$jsDir/../../www/@/scripts.min.js"
echo -e "[ \e[01;30mOK\e[00m ] compilado scripts.min.js..."

# publica arquivos
cp html/* ../www
cp html/.htaccess ../www
cp imagens/* ../www/@
chown -R regis.apache ../www
echo -e "[ \e[01;30mOK\e[00m ] arquivos estáticos publicados..."
compass compile


exit 0