#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd kamilly -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM

useradd linda -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN

useradd jose -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd paulo -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Expecificando permisões dos diretorios"

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
