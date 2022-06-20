function Get-ListFolders {
	Get-ChildItem -Directory
}

function Get-DirNames{
	Get-ChildItem -Name
}

# from stackoverflow.com/questions/1287718
function Write-BranchName () {
	try {
		$branch = git rev-parse --abbrev-ref HEAD
		# $branch = git branch --show-current

		if ($branch -eq "HEAD") {
			# we're probably in detached HEAD state, so print the SHA
			$branch = git rev-parse --short HEAD
			Write-Host " ($branch)" -ForegroundColor "red" -NoNewLine
		}
		else {
			# we're on an actual branch, so print it
			Write-Host " ($branch)" -ForegroundColor "blue" -NoNewLine
		}
	} catch {
		# we'll end up here if we're in a newly initiated git repo
		Write-Host " (no branches yet)" -ForegroundColor "yellow" -NoNewLine
	}
}

# ls from linux
function Get-LsKali () {
	wsl ls --color=auto -hF $args
}

# Functions for gits
	function Get-GitLog () {
		git log --all --oneline	--graph --decorate
	}

	function Get-FilesPushed () {
		git ls-tree -r --name-only master
	}

# Get Weather from wttr.in
	function Get-Weather(){
		curl wttr.in/Fernando+de+la+Mora?1?m/:bash.function
	}


# Get MJAlias Help
	function Get-MJAliasHelp () {
		Write-Host "lf:         List folders."
		Write-Host "ln:         List names."
		Write-Host "im:         Import module."
		Write-Host "lk:         Kali -ls"
		Write-Host "glo:        Git Log."
		Write-Host "gfp:        Git files pushed."
		Write-Host "getWeather: Get local weather."
		Write-Host " "
		Write-Host "jobs:       Get-Job."
		Write-Host "            Receive-Job."
		Write-Host "            Remove-Job."
		Write-Host "            Start-Job."
		Write-Host "            Stop-Job."
		Write-Host "            Wait--Job."
}

# From PowerShell
New-Alias -Name lf Get-ListFolders
New-Alias -Name ln Get-DirNames
New-Alias -Name im Import-Module 

# WSL Linux sub-sytem
New-alias -Name lk -Value Get-LsKali -Option AllScope

# Git
New-Alias -Name glo -Value Get-GitLog
New-Alias -Name gfp -Value Get-FilesPushed

# External - Check weather
New-Alias -name getWeather -value Get-Weather

# MJAliasHelp
New-Alias -Name mjalias -value Get-MJAliasHelp

# Jobs - Section
New-Alias -Name jobs -value Get-Job
