#!/bin/bash

instalarTerminator() {

	APP="Terminator"
	echo "Instalando $APP"

	sudo apt-get install terminator

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
