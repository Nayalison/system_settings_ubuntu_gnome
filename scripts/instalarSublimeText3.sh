#!/bin/bash

instalarSublimeText3() {

	APP="Sublime Text 3"
	echo "Instalando $APP"

	sudo add-apt-repository ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install sublime-text-installer

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}

