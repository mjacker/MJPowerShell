function Get-ListFolders {
	Get-ChildItem -Directory
}

function Get-DirNames{
	Get-ChildItem -Name
}


New-Alias -Name lf Get-ListFolders
New-Alias -Name ln Get-DirNames
New-Alias -Name im Import-Module 
