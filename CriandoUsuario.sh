#!/bin/bash

echo "Criando Pastas..."

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando Usuários..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd Senha123)
#passwd convidado1 -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd Senha123)
#passwd convidado2 -e

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd Senha123)
#passwd convidado3 -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd Senha123)
#passwd convidado4 -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd Senha123)
#passwd convidado5 -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd Senha123)

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd Senha123)

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd Senha123)

useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd Senha123)

echo "Definindo Grupos de Usuário..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Definindo Grupos de Diretórios..."

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

echo "Criando permissões dos diretórios..."

chmod 770 /home/adm/
chmod 770 /home/ven/
chmod 770 /home/sec/
chmod 777 /home/puclico/


echo "Concluido!!!"
