#!/bin/bash

exibirMensagemDeStatus() {
	if [ $STATUS == 0 ]; then
		echo -e "*\033[0;36m $APP instalado \033[0m"
	else
		echo -e "*\033[1;31m $APP não pôde ser instalado \033[0m"
	fi
}
