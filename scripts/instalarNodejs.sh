#!/bin/bash

instalarNodejs() {

	APP="Node JS"
	echo "Instalando $APP"

	curl -sL https://deb.nodesource.com/setup | sudo bash -
	sudo apt-get install nodejs

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
