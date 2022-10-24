$filename = ".\02 Get File size.ps1"

# Get file size in bytes
Write-Host "This program has in bytes: " -NoNewline
(Get-Item -Path $filename).Length

Write-Host "This program has in Kb:    " -NoNewline
# Get file size in Kb 
(Get-Item -Path $filename).Length/1KB

Write-Host "This program has in Mb:    " -NoNewline
# Get file size in Mb
(Get-Item -Path $filename).Length/1MB

Write-Host "This program has in Gb:    " -NoNewline
# Get file size in Gb
(Get-Item -Path $filename).Length/1GB

