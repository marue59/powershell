############### REDIRECTIONS
# Chevron
# > => ecrase
$HOME > ./demos/home.txt

# >> => ajoute sans ecraser 
$PROFILE >> ./demos/home.txt

# rediriger des flux n (numero)
# 1: succès
# 2: erreurs
# 3: avertissement

# erreur  =>  n >&1 
# je spécifie que le 2 et redirigé vers le 1
Get-ChildItem 'C:/', 'fakepath' 2>&1 > ./demos/dir.log
# => redirige dans le fichier dir.log l'erreur et le succés 
cat ./demos/dir.log

