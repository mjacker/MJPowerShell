function Gcc-Args([string]$arg){ 
	$temp = "cmd /c g++ -std=c++11 -o " + $arg + " " + $arg + ".cpp"; 
	pwsh --command $temp; 
	$exe = ".\" + $arg + ".exe"; 
	pwsh --command $exe;
}

function Gcc-Test(){
	Set-Alias cc Gcc-Args;
}
