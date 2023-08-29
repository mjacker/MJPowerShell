### creating a soft link to a file using cmd.

```
cmd /c mklink .\myFile.txt D:\Folder\MyRealFile.txt
```

## Creating a hard link to a file 
`New-Item -ItemType HardLink -Name MyHardLink.ln -Value c:\MyOriginalFile.txt"`

> Warning: The system cannot link files from different disk drives.
