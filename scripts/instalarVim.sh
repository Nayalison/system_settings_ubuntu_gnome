#!/bin/bash

instalarVim() {

	APP="Vim"
	echo "Instalando $APP"

	sudo apt-get install vim

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
