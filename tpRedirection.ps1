# 1 Ecrire un script powershell qui redirige la sortie de la commande Get-Process 
# vers un fichier nommé process.txt dans le dossier c:/Temp


Get-Process >> ./redirection/Temp

# 2. Le script doit egalement rediriger les erreurs eventuelles 
# vers un fichier nommé errors.txt dans le meme dossier

Get-ChildItem './redirection/Temp' , 'fakepath' *>&1 >> ./redirection/erros.txt


#** le script doit utiliser les opérateurs de redirection PowerShell et ne pas ecraser les fichiers existants


