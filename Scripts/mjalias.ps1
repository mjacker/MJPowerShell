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

# Get Weather from wttr.in
function Get-Weather(){
	curl wttr.in/Fernando+de+la+Mora?1?m/:bash.function
}


New-Alias -Name lf Get-ListFolders
New-Alias -Name ln Get-DirNames
New-Alias -Name im Import-Module 
New-alias -Name lk -Value Get-LsKali -Option AllScope
New-Alias -Name glo -Value Get-GitLog
New-Alias -name getWeather -value Get-Weather
