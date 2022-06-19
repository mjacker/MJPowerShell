### Background jobs
This allow you to run commands asynchronously, in otrher words you can start a long running PowerShell job and immediately get control back. This allows you to keep working while the jobs are running.

PowerShell supplies a new number of new cmdlets to control these jobs:

Start-Job
* Get-Job
Receive-Job
Remove-Job
Stop_Job
Wait-Job


### Display all folder files recursivesly
* `Get-ChildItem d:\ -Recurse`

> This command will take a while, so we can call the same command and send it as a background.

 

### Start a job
`Start_Job -Name GetAllFiles -ScriptBlock {Get-ChildItem d:\ -recurse}

### Get-Job
Display all job status.

`Get-Job`

### Receive-Job -keep
Receive the data from job.
`Receive-Job -Name GetAllFiles -keep`

### Stop-Job
Stop a job
`Stop-Job <name>`

### Remove-Job
Remove a job.
`Get-Job -name "GetAllFiles* | Remove Job` 


