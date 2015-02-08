#!/bin/bash

## Caso você já tenha o pacote do eclipse baixado copie-o para /tmp
## para pular o download

instalarEclipse64() {

	APP="Eclipse"
  PACOTE=eclipse-jee-luna-SR1a-linux-gtk-x86_64.tar.gz
  DIRETORIO=~/Desenvolvimento
	echo "Instalando $APP"

  if [ ! -e /tmp/$PACOTE ]; then
    wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/SR1a/$PACOTE -P /tmp
  fi

  if [ ! -d $DIRETORIO ]; then
    echo "Criando diretorio para instalação..."
    mkdir -p $DIRETORIO
  fi

  tar -xvzf /tmp/$PACOTE -C $DIRETORIO

	STATUS=$?

	exibirMensagemDeStatus $STATUS $APP

  echo "Deseja executar o Eclipse? (S/n) "
  read OPCAO
  if [ ${OPCAO:=S} == 'S' -o $OPCAO == 's' ]; then
    ~/Desenvolvimento/eclipse/eclipse &
  fi

}
