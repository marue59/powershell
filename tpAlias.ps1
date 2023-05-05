# 1. Creer un alias nommée pss pour la commande Get-Process

New-Alias -Name pss -Value Get-Process

# 2. Utiliser le pipeline pour transmettre la liste des processus 
# en les triant par ordre decroissant de memoire utilisée avec Sort-Object
Get-Command | Get-Member

# Get-Command | Where-Object -Property Name -Like *Get-Process* | Sort-Object -Property WS
pss | Sort-Object -Property WS -Descending


# 3. Utiliser un Where-Object pour filtrer la sortie de la commande précédente 
# et ne garder que les processus dont le nom commence par p
pss | Where-Object -Property Name -Like p* | Sort-Object -Property WS -Descending


# 4. Utiliser la mise en forme pour afficher les porcessus filtrés sours forme de tableau avec les colonnes suivantes : name, id, workingSet64
# concatenantion des 3 avant

Get-Process | Sort-Object -Property WS -Descending | Format-Table 

