# Runs commands or expressions on the local computer.
# The Invoke-Expression cmdlet evaluates or runs a specified string as a command and returns the results of the expression or command.

$command = "Get-Process"

Invoke-Expression $command
