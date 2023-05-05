<###############

BASE DE POWERSHELL

################>

# Variable contenant les info de powerShell
$PSVersionTable

# Variable d'env home = Chemin du repo de l'utilisateur
$HOME

################## = man
Get-Help

Get-Help -Name Get-Help

# ouvrir la doc sur le nav
Get-Help -Name Get-Help -Online

# les concepts
Get-Help about_*

Get-Help about_History

Get-Help *about_* #=> contient
Get-Help ?about_  #=> remplace le 1er caractere

# Alias pour la doc
man Get-Help

help Get-Help

##################
## FILTER PAR COMMANDES 

# lister les commandes
Get-Command

# Lister et trier par verbe Get
Get-Command -Verb Get

# recuperer la partie apres le verbe qui commence par item 
Get-Command -Noun Item* 

##################
## FILTER PAR NOMS 

# Filtrer par rapport au NOM complet de la commande
# ex : toto* => commence par toto
#     *toto  => fini par toto
#     *toto* => contient toto

Get-Command -Name *e-i*


####################
## FILTER PAR VERBES

# Lister tous les VERBES
Get-Verb

####################

### obtenir les membres, les propriétés et les methodes
Get-Member 

help Get-Member -Examples

# avec pipe
## voir toute les propriétés et les methodes en relation avec 
Get-Service | Get-Member 

$prenom = "Marie"

$prenom | Get-Member # => recuperation de methode 

# utilisation d'un methode
$prenom.Clone(); # = Marie
$prenom.ToUpper(); # = MARIE

# utilisation d'une propriété
$prenom.Length; # taille chaine de cara

####################
# TP 
# 1. Afficher toute les commandes contenant le nom PRocess
Get-Command -Name *Process*
# 2. Ecrire une commande qui affiche des ex d'utilisation de Get-Service
Get-Help -Name Get-Service -Examples
# 3. Ecrire une commandee qui affiche les methode de Get-Process

########################
# path
pwd 

########################
# history 
Get-History

#alias
h 

h -?

# cleaner l'history
clhy

######################
##Pipeline
# passer un resultat d'une commande a une autre
# stocker dans un autre fichier
Get-Command | Out-File .\demos\commandes.txt

# recuperer le context soit un CAT
Get-Content .\demos\commandes.txt | Sort-Object

# recuperer le context soit un CAT
Get-Content .\demos\commandes.txt | 

# == 
cat .\demos\commandes.txt