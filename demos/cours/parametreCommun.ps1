############### PARAMETRES COMMUNS

# - Whatif va permettre de simuler une action
New-Item -Path ./demos/test.xyz -WhatIf

# Confirmation avant execution
Remove-Item -Path ./demos/home.txt -Confirm
# met un prompt pour guider

