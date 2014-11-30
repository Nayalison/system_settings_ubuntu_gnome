#!/bin/bash

instalarJava7() {

	APP="Java 7"
	echo "Instalando $APP"

	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java7-installer

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
