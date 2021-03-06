#!/bin/bash

instalarGit() {

  APP="Git"
  echo "Instalando $APP"

  sudo apt-get install git git-gui gitk meld -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarCurl() {

  APP="Curl"
  echo "Instalando $APP"

  sudo apt-get install curl -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarZsh() {

  APP="Zsh"
  echo "Instalando $APP"

  sudo apt-get install zsh
  curl -L http://install.ohmyz.sh | sh
  echo -e "*\033[0;32m Ocorreu um erro ao tentar trocar seu shell padrão, mas não se preocupe, vamos corrigir isso agora: \033[0m"
  chsh

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarVim() {

  APP="Vim"
  echo "Instalando $APP"

  sudo apt-get install vim -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarFontes() {
  APP="Fonte Arial"
  echo "Instalando $APP"
  sudo apt-get install ttf-mscorefonts-installer -y
  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP
}


instalarXvfb() {
  APP="xvfb"
  echo "Instalando $APP"
  sudo apt-get install xvfb -y
  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP
}

