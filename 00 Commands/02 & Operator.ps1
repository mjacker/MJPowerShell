# & is the call operator, (&) allows you to execute a command, script of function.

# Syntax
#	$ "[path] command" [arguments]

# Example 1
# -------------------------
#	& "c:\mycommand.exe" 'test', '123', 'long path to file\file.txt'

# Example 2
# -------------------------
#	$program = "Get-ChildItem"
#	$args = "*.txt", "-recurse"
#	& $program $args

	$program = "Get-ChildItem"
	$args = '*.ps1'
	& $program $args
