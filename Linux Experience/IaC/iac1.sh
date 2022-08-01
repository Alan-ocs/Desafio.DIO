#!/bin/bash

grupo_01="GRP_ADM"
grupo_02="GRP_VEN"
grupo_03="GRP_SEC"

echo "Criando diretórios..."

mkdir /publico
mkdir /$grupo_01
mkdir /$grupo_02
mkdir /$grupo_03

echo "Criando grupos de usuários..."

groupadd $grupo_01
groupadd $grupo_02
groupadd $grupo_03

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_01
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_01
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_01

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_02
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_02
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_02

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_03
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_03
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G $grupo_03

echo "Especificando permissões dos diretórios...."

chown root:$grupo_01 /$grupo_01
chown root:$grupo_02 /$grupo_02
chown root:$grupo_03 /$grupo_03

chmod 770 /$grupo_01
chmod 770 /$grupo_02
chmod 770 /$grupo_03
chmod 777 /publico

echo "Fim....."