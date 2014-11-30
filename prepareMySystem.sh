#!/bin/bash

# Essenciais
. scripts/instalarGit.sh
. scripts/instalarCurl.sh
. scripts/instalarZsh.sh
. scripts/instalarVim.sh

# Desktop
. scripts/instalarIcones.sh
. scripts/instalarChrome.sh

# Develop
. scripts/instalarJava7.sh
. scripts/instalarEclipse.sh
. scripts/instalarSublimeText3.sh
. scripts/instalarNodejs.sh
. scripts/mensPadrao.sh

essentciais() {
  echo "Intalando aplicativos essenciais"
# instalarGit
# instalarCurl
# instalarZsh
instalarVim
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

essentciais