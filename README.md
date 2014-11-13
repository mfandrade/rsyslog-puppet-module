# Máquina Servidor de Logs

## O que é
Este é um box do [Vagrant](http://www.vagrantup.com) provisionado com [Puppet](http://www.puppetlabs.com) para criar um servidor centralizado de logs utilizando o pacote Rsyslog.

A intenção do projeto é facilitar a criação de um servidor centralizado de logs, além de servir de base de estudo para quem queira se iniciar na gerência de configurações com Puppet.

## Como faço pra usar

0. Use Linux :-)
1. Certifique-se de instalar o Virtualbox e o Vagrant
2. Clone este repositório

  $ git clone git@github.com:mfandrade/rsyslog-puppet-module.git

3. Inicie a máquina Vagrant e aguarde

  $ cd rsyslog-puppet-module
  $ vagrant up

4. Ajuste as configurações de rede para sua máquina
5. Configure os clientes do rsyslog de acordo

## Onde posso saber mais

Para saber mais sobre o assunto, visite:
* http://pontolinux.wordpress.com/2013/07/09/centralizacao-de-logs-com-rsyslog-banco-de-dados-ferramenta-de-visualizacao-grafica/
* http://www.vivaolinux.com.br/artigo/Rsyslog-Gerenciamento-centralizado-de-logs/

