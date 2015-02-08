#!/bin/bash

instalarJava8() {

	APP="Java 8"
	echo "Instalando $APP"

	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java8-installer

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}
