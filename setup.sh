#!/bin/bash

# Essenciais
. scripts/essenciais.sh

# Desktop
. scripts/instalarChrome.sh

# Develop
. scripts/desenvolvimento.sh

# Manutenção do SO
. scripts/manutencao.sh

# Utils
. scripts/mensPadrao.sh

essentciais() {
  echo "Intalando aplicativos essenciais"
  instalarGit
  instalarCurl
  instalarZsh
  instalarVim
  instalarFontes
  instalarXvfb
}

desktop() {
  echo "Intalando aplicativos de Desktop"
  instalarChrome
}

develop() {
  echo "Intalando aplicativos de desenvolvimento"
  instalarSublimeText3
  instalarJava7
  instalarEclipse64
  instalarNodejs
  instalarGraphviz
  instalarRVM
  instalarMaven
  instalarPostgreSQl
}

manutencao() {
  echo "Intalando aplicativos de manutenção"
  instalarGrubCustomizer
  instalarHtop
}

essentciais
desktop
develop
manutencao
