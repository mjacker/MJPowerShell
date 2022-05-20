function prompt{ 
	Write-Host ("PS ") -ForegroundColor Yellow -BackgroundColor DarkBlue -NoNewLine
	Write-Host ($((Get-Location | Get-Item).name)) -ForegroundColor White -BackgroundColor DarkGreen -NoNewLine
	
	# git
	if (Test-Path .git) {
		Write-Host "-" -NoNewline -ForegroundColor "DarkGreen"
		Write-BranchName
		Write-Host "" -NoNewLine
	}
	else {
		# we're not in a repo so don't bother displaying branch name/sha
		# Write-Host "" -ForegroundColor "green" -NoNewLine
	}
	Write-Host (">") -NoNewLine
	return " "
}
