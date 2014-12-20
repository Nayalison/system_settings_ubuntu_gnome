#!/bin/bash

# Essenciais
. scripts/instalarGit.sh
. scripts/instalarCurl.sh
. scripts/instalarZsh.sh
. scripts/instalarVim.sh
. scripts/instalarTerminator.sh

# Desktop
. scripts/instalarIcones.sh
. scripts/instalarChrome.sh

# Develop
. scripts/instalarJava7.sh
. scripts/instalarEclipse.sh
. scripts/instalarSublimeText3.sh
. scripts/instalarNodejs.sh

# Manutenção do SO
. scripts/instalarGrubCustomizer.sh

# Utils
. scripts/mensPadrao.sh

essentciais() {
  echo "Intalando aplicativos essenciais"
  # instalarGit
  # instalarCurl
  # instalarZsh
  # instalarVim
  # instalarTerminator
}

desktop() {
  echo "Intalando aplicativos de Desktop"
  # instalarIcones
  # instalarChrome
}

develop() {
  echo "Intalando aplicativos de desenvolvimento"
  # instalarSublimeText3
  # instalarJava7
  # instalarEclipse
  # instalarNodejs
}

manutencao() {
  echo "Intalando aplicativos de manutenção"
  # instalarGrubCustomizer
}

essentciais
desktop
develop
manutencao