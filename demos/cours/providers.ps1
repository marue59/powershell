############### PROVIDERS
# Acceder aux données du sys 
# Liste des providers disponible
Get-PSProvider

# Liste des lecteurs d'acces aux données
Get-PSDrive

###################################
# afficher les variables
Get-Variable

# chemin d'accés au repo de l'utilisateur courant
$HOME

# afficher profil utilisateur
$PROFILE 
$PSVersionTable
$PSVersionTable.GetType() # => renvoi le type


# au alias 