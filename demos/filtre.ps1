#### Manipuler les resultats

################################
## WHERE
# tous les process dont la charge cpu est sup a 200 

# filtre par rapport a la propriété CPU sup a 200
Get-Process | Where-Object -Property CPU -gt 200

# filtrer par rapport a ws propriété sup a 300
Get-Process | ? -Property WS -gt 300

# recupperer tout les process dont le nom est = a code
# Synthaxe avec un alias
Get-Process | ? -Property ProcessName -eq Code

# Permet de selectionner les colonnes a afficher
Get-Service | Select-Object Name

# Selectionner 2 col avec le service
Get-Service | Select-Object Name, Status

# Selectionner 2 col avec le service QUE JEPEUX TRIER
Get-Service | Select-Object Name, Status | Sort-Object -Property Name

# voir des exemple de Select-Object
help Select-Object -Examples

################################
## FOREACH-OBJECT
# prend en para un script
Get-Command | ForEach-Object -?

# recuperer un commande et pour chaque commande je veux quer tu affiches que le nom et en maj
Get-Command | ForEach-Object {$_.Name.ToUpper()} # <= recuperer l'objet en cours

# utiliser dans un scriptblock
Get-Command | ForEach-Object {$PSItem.Name.ToUpper()}
Get-Command | % {$_.Name.ToUpper()}


Get-Command | select -last 1 

################################
## GROUP-OBJECT
# Service qui tourne et qui sont stoppés

Get-Service | Group-Object -Property Status

# Recupere les Alias d'une cmdlet
Get-Alias -Definition Group-Object

# Récupere la commande d'un alias
Get-Alias pwd


############################
### Mise en forme de l'affichage
# Formater la sortie

# recuperer les commande ou le nom ressemble a Format sous format différent
Get-Command -Verb Format

Get-Command | Where-Object -Property Name -Like *Process* | Format-List
Get-Command | Where-Object -Property Name -Like *Process* | Format-Table
Get-Command | Where-Object -Property Name -Like *Process* | Format-Wide


# recuperer les info de mon disque 
Get-Disk | Select-Object Model, Size | Format-List


########################
### Commandes

shift alt E convertie les alias 
