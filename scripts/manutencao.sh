#!/bin/bash
instalarGrubCustomizer() {

  APP="Grub Customizer"
  echo "Instalando $APP"

  sudo add-apt-repository ppa:danielrichter2007/grub-customizer
  sudo apt-get update
  sudo apt-get install grub-customizer -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarHtop() {

  APP="Htop"
  echo "Instalando $APP"

  sudo apt-get install htop -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}


