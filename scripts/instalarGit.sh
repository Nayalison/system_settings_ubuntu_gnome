#!/bin/bash

instalarGit() {

	APP="Git"
	echo "Instalando $APP"

	sudo apt-get install git git-gui

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
