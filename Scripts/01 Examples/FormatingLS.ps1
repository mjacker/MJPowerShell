# Formating like linux
Write-Host ("# ls | Format-Wide -Column 2") -f red
	ls | Format-Wide -Column 2
Write-Host ("# ls | Format-Wide -Column 5 -Property Name") -f red
	ls | Format-Wide -Column 5 -Property Name
Write-Host ("# ls | Format-Wide Name -Autosize") -f red
	ls | Format-Wide Name -Autosize



