#!/bin/bash
instalarGrubCustomizer() {

  APP="Grub Customizer"
  echo "Instalando $APP"

  sudo add-apt-repository ppa:danielrichter2007/grub-customizer
  sudo apt-get update
  sudo apt-get install grub-customizer

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

