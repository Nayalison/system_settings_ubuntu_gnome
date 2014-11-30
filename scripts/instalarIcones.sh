#!/bin/bash

instalarIcones() {

	APP="Tema de Icones"

	echo "Você deseja trocar o tema de ícones (S/n)? "
	read OPCAO

	if [ ${OPCAO:=S} == 'S' -o $OPCAO == 's' ]; then

		if [ ! -e /tmp/faience-icon-theme_0.5 ]; then
			unzip tar/faience-icon-theme_0.5.zip -d /tmp/faience-icon-theme_0.5
		fi

		sudo /tmp/faience-icon-theme_0.5/INSTALL

	else

		echo "Saindo..."
		exit 0

	fi

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

}

