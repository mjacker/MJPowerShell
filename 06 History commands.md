# Using Previous Commands history in powershell console
`$ Get-History`

# Invoke and run previous command by ID:
`$ Invoke-History 6`

# Search in PowerShell  Command History:
` CTRL+R/CTRL+S`

# THE # Character
Use the # character to search through the command history, and press Tab key to match the parttern in the console.

# Filtering History
`Get-History | Select-String -Pattern "Get-"`
