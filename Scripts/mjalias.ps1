<#
.SYNOPSIS
    This script/function does personalizate my powershell aliases.

.DESCRIPTION
    A more detailed description of why and how the function works.

.PARAMETER DemoParam1
    The parameter DemoParam1 is used to define the value of blah and also blah.

.PARAMETER DemoParam2
    The parameter DemoParam2 is used to define the value of blah and also blah.

.EXAMPLE
    The example below does blah
    PS C:\> Example

.NOTES
    Author: MJacker
    Last Edit: 2023-08-11
    Version 1.0 - initial release of funcitons
    Version 1.1 - update for formating file

#>


#   Funtions
## Show only files names
function dirName {
	Get-ChildItem -Name
} 

## show files and attributes
function dirAttrib{
	Get-ChildItem 
}

## ls from linux
function Get-LsKali () {
	wsl ls --color=auto -hF $args
}

## GITS functions
### from stackoverflow.com/questions/1287718
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

function Get-GitLog () {
	git log --all --oneline	--graph --decorate
}

function Get-FilesPushed () {
	git ls-tree -r --name-only master
}


## Get Weather from wttr.in
function Get-Weather(){
	curl wttr.in/Fernando+de+la+Mora?1?m/:bash.function
}


## PowerShell functions
#	function Show-Markdown-Web ([string]$arg){
#		$temp = "Show-Markdown -UseBrowser " + $arg;
#		Write-Host $temp
#		pwsh --command $temp;
#	}

## Markdown
function mjshowMarkdown ([string]$arg){
#	"D:\_Jaime\_GIT\04_MJGITs\08 PowerShell\Colors\01 Show-Markdown set get colors\02 set custom show-markdown colors on powershell.ps1"
	Set-MarkdownOption -Header1Color '[4;42m' -Header6Color '[4;32m'
	$temp = "Show-MArkdown " + $arg + "| more"
	pwsh --command $temp;
} 

## Get MJAlias Help
function Get-MJAliasHelp () {
	Write-Host "ls:         List folders and files names."
	Write-Host "ll:         List folders and files with attributes."
	Write-Host "im:         Import module."
	Write-Host "lk:         Kali -ls"
	Write-Host "glo:        Git Log."
	Write-Host "gfp:        Git files pushed."
	Write-Host "getWeather: Get local weather."
	Write-Host "sm:			Show Markdown using browser."
	Write-Host " "
	Write-Host "jobs:       Get-Job."
	Write-Host "            Receive-Job."
	Write-Host "            Remove-Job."
	Write-Host "            Start-Job."
	Write-Host "            Stop-Job."
	Write-Host "            Wait--Job."
	Write-Host " "
	Write-Host " Paths:"
	Write-Host " - $ mats"
	Write-Host " - $ gits"
	Write-Host " - $ mjpwsh"
}

# --------------------------------------------------
# SETTING ALIASES 
## From PowerShell
Remove-Alias -Name ls #because can't overrride it
New-Alias -Name ls dirName
New-Alias -Name ll dirAttrib
New-Alias -Name im Import-Module 
New-Alias -Name sm mjshowMarkdown 

## WSL Linux sub-sytem
New-alias -Name lk -Value Get-LsKali -Option AllScope

## Git
New-Alias -Name glo -Value Get-GitLog
New-Alias -Name gfp -Value Get-FilesPushed

## External - Check weather
New-Alias -name getWeather -value Get-Weather

## MJAliasHelp
New-Alias -Name mjalias -value Get-MJAliasHelp

## Jobs - Section
New-Alias -Name jobs -value Get-Job
