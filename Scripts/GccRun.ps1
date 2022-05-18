function Cc-Exe([string]$arg){ 
	$temp = "cmd /c g++ -std=c++11 -o " + $arg + " " + $arg + ".cpp"; 
	pwsh --command $temp; 
	$exe = ".\" + $arg + ".exe"; 
	pwsh --command $exe;
}
New-Alias -Name cc Cc-Exe
