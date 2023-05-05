# 1. Afficher toute les commandes contenant le nom PRocess
# 2. Ecrire une commande qui affiche des ex d'utilisation de Get-Service
# 3. Ecrire une commandee qui affiche les methode de Get-Process

Get-Command -Name *Process*

Get-Help -Name Get-Service -Examples

Get-Process | Get-Member -MemberType Method