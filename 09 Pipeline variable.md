## Pipeline variable `$_` == `$PSItem`
The `$_` is said to be the pipeline variable in Powershell.
The `$_` variable is an alias to PowerShell automatic variable name `$PSItem`
It has multiple use cases such as filtering an item or referring to any specific object.

## Examples
### # Filter full name path for md files
`Cmlet | Where/Where-Object/ForEach-Object ${$_<field> -flag <value>`

`dir -Filter *.md | %{$_.Extension}`
or
`dir -Filter *.md | %{$PSItem.FullName}`

> D:\MyFolder\hello.md

## # Get all proceses related to chrome

```
Get-Process | Where-Obect {$_.ProcessName -Match 'chrome'}
```
