## Getting the function of a command in powerhsell
`Get-Command ls`

Output:
> Alias	ls -> Get-ListS

## Getting coomand type
`Get-Command Get-ListS`

Output:
> Function Get-ListS			// This is a function from powershell

## Get the file that contains the functions
Using function's scriptblock File property

`Write-Host ${function:Get-ListS}.File`


---
## Getting aliases for a cmdlet
`Get-Alias -Definition Get-childItem`

Output:
> CommandType	Name
> Alias	dir -> Get-ChildItem
