## Funtions
### # Print 1 to 10
      while ( $val -ne 10 ) { $val++ ; Write-Host %val }

### # Change PS prompt to local folder
      funtion prompt { "PS .\" + ((Get-Location) | Get-Item).Name + ">"} 

### # IMPORT FUNCTION FROM FILE:
      Import-Module -Name file.ps1
