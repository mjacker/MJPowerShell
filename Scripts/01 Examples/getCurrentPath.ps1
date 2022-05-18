## wayt to get current folder name
		$CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf
		Write-Host ($CmdPromptCurrentFolder)
		Write-Host ($((Get-Location | Get-Item).name))

