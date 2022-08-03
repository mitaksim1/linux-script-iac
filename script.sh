#! /bin/bash

# Création  des répertoires
echo "Création dossiers"
mkdir /public /adm /ven /sec

# Création des groupes
echo "Création des groupes"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Création des utilisateurs
echo "Création des utilisateurs"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 senha)
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -1 senha)

# Ajout utilisateur GRP_ADM
echo "Ajout utilisateur au groupe GRP_ADM"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

# Ajout utilisateur GRP_VEN
echo "Ajout utilisateurs au groupe GRP_VEN"
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

# Ajout utilisateur GRP_SEC
echo "Ajout utilisateur au groupe GRP_SEC"
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

# Définition root comme propriétaire des tous les répertoires
echo "root = owner"
chown root:GRP_ADMIN /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

# Droits des utilisateurs sur leur groupe
echo "Droits total user/groupe"
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

# Droits total dossier publico
chmod 777 /publico/

echo "Finalizado"

