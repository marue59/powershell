<############### 

SCRIPTS

###############>

##### strategie d'execution : 
# remoteSigned => signé par un editeur approuvé
# modifier la strategie

#### Strategie : 
Get-ExecutionPolicy
# retour => RemoteSigned (par default)

#region MaRegion

Write-Host "Hello"

Write-Host "ca va"

#endRegion

# Execution du script uniquement si : 
Requires -Version 7.0

################################
#### Les variables
# stocker en memoire vive
# commence par $
# affecter par = 

$chien = "Rex"
$age = 30
$argent = 12.5
# mais on peut typer aussi fortement
[int]$pieds = 2
[string]$name = "dupont"

# erreur de sortie
$pieds = "toto"
$name = 3 
# => sortie erreur


#### Les constantes

# creation d'une constante
New-Variable -Name "REPERTOIRE" -Value "C:\Users\Administrateur\OneDrive - M2I\Documents\PowerShell" -Option Constant

#### Concatenation

$message = "Bonjour " + $name
$message

#######################

$directory = Get-Item ./demos

$message ="Date creation : $($directory.CreationTime)"
$message
