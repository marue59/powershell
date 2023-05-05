<############### 

STRUUCTURES CONDITIONNELLES

###############>
#### if 

if ($name.Length -gt 5 )
{
    Write-Host "Votre nom est long "
}
# retour 
if ($name.Length -lt 5 )
{
    Write-Host "Votre nom est long "
} 
# pas dee retour

if ($name.Length -gt 5 -and $name -notin "toto", "bernard" )
{
    Write-Host "Votre nom $name est long "
} 

# else :
if ($name.Length -gt 5 )
{
    Write-Host "Votre nom est long "
} else {
    Write-Host "Votre nom est court "
}

