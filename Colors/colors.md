## Colors on Powershell
#### Print a diferent color text
	Write-Host "Hello world" -ForegroundColor "red"

#### Print all colors names from Console color
	Write-Host ([enum]::GetValues([System.ConsoleColor])

#### save all colors name in a [enum] variable
	$colors = ({enum]::GetValues([System.ConsoleColor])

#### For each print color
	Foreach($bc in $colros) { Write-Host "XXX" -ForegroundColor $bc -BackgroundColor $bc = NoNewline}

#### print all color table
	$colors = [enum]::GetValues([System.ConsoleColor])
	Foreach ($bgcolor in $colors){
		Foreach ($fgcolor in $colors) { Write-Host "$bgcolor|"  -ForegroundColor $fgcolor -BackgroundColor $bgcolor -NoNewLine }
		Write-Host " on $bgcolor"
	}
