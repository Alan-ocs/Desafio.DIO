#!/bin/bash

echo "executando script"

usuario01="User01"
usuario02="User02"
usuario03="User03"
usuario04="User04"

echo "Criando usuário $usuario01"

useradd $usuario01 -c "Usuário convidado 01" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd $usuario01 -e

echo "Criando usuário $usuario02"

useradd $usuario02 -c "Usuário convidado 02" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd $usuario02 -e

echo "Criando usuário $usuario03"

useradd $usuario03 -c "Usuário convidado 03" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd $usuario03 -e

echo "Criando usuário $usuario04"

useradd $usuario04 -c "Usuário convidado 04" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd $usuario04 -e

echo "Finalizado!!"