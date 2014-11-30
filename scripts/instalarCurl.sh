#!/bin/bash

instalarCurl() {

	APP="Curl"
	echo "Instalando $APP"

	sudo apt-get install curl

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
