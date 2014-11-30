#!/bin/bash

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
