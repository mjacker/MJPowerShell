Write-Host "Synopsis"
Write-Host "	Determines whether all elements of a path exist."
Write-Host "---"
Write-Host "Checking if the file readme.md exists in current directory..."
Write-Host "$ Test-Path readme.md" 
Test-Path readme.md
Start-Sleep -s 2

$FileExists = Test-Path readme.md
If ($FileExists -eq $True) {Write-Host "The File readme.md already exists!."}
Else {
	Write-Host ""
	Write-Host "The File does not exists."
	Write-Host "Creating readme.md in current directory..."
	Start-Sleep -s 2
	echo "The file created suscesfully." > readme.md
	Write-Host "Filed created."
	Start-Sleep -s 2

	Write-Host ""
	Write-Host 'Checking if the file readme.md exists in curren directory...'
	Test-Path readme.md
}
