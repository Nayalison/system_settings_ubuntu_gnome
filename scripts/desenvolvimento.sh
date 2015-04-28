#!/bin/bash

instalarJava7() {

  APP="Java 7"
  echo "Instalando $APP"

  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java7-installer -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarJava8() {

  APP="Java 8"
  echo "Instalando $APP"

  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java8-installer -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

## Caso você já tenha o pacote do eclipse baixado copie-o para /tmp
## para pular o download
instalarEclipse32() {

  APP="Eclipse"
  PACOTE=eclipse-jee-luna-SR1-linux-gtk.tar.gz
  DIRETORIO=~/Desenvolvimento
  echo "Instalando $APP"

  if [ ! -e /tmp/$PACOTE ]; then
    wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/SR1/$PACOTE -P /tmp
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

instalarSublimeText3() {

  APP="Sublime Text 3"
  echo "Instalando $APP"

  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install sublime-text-installer -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarNodejs() {

  APP="Node JS"
  echo "Instalando $APP"

  curl -sL https://deb.nodesource.com/setup | sudo bash -
  sudo apt-get install nodejs -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarGraphviz() {

  APP="Graphviz"
  echo "Instalando $APP"

  sudo apt-get install graphviz -y

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}


instalarRVM() {

  APP="RVM"
  echo "Instalando $APP"

  command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -sSL https://get.rvm.io | bash -s stable

  echo 'source ~/.rvm/scripts/rvm' >> ~/.zshrc

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}


instalarMaven() {

  APP="Maven"
  echo "Instalando $APP"

  wget http://ppa.launchpad.net/natecarlson/maven3/ubuntu/pool/main/m/maven3/maven3_3.2.1-0~ppa1_all.deb
  sudo dpkg -i maven3_3.2.1-0~ppa1_all.deb
  sudo ln -s /usr/share/maven3/bin/mvn /usr/bin/maven
  rm maven3_3.2.1-0~ppa1_all.deb
  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}

instalarPostgreSQl() {

  APP="PostgreSQL"
  echo "Instalando $APP"

  wget http://get.enterprisedb.com/postgresql/postgresql-9.1.15-2-linux-x64.run
  sudo chmod 777 postgresql-9.1.15-2-linux-x64.run
  sudo ./postgresql-9.1.15-2-linux-x64.run
  rm postgresql-9.1.15-2-linux-x64.run

  STATUS=$?

  exibirMensagemDeStatus $STATUS $APP

}