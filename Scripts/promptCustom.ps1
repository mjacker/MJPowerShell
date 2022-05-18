function prompt{ 
	Write-Host ("PS ") -ForegroundColor Yellow -BackgroundColor DarkBlue -NoNewLine
	Write-Host ($((Get-Location | Get-Item).name)) -ForegroundColor White -BackgroundColor DarkGreen -NoNewLine
	Write-Host (">") -NoNewLine
	return " "
}
