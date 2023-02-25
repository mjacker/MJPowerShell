## Powershell - Files and Folder
   This document refers to commands that are related to files of folder with very simple examples.

---
## Index
   * Folders
      - [Create new folder](#create-new-folder)
   * Files
      - [Create a file](#create-a-file)  
      - [Rename a file](#rename-a-file)  
      - [Move a file](#rename-a-file)  
      - [Copy a file](#copy-a-file)  
   
---
## FOLDERS 
### # Create new folder
`New-Item -Path "c:\" -Name "MyFolder" -ItemType "directory"`
   [back to index.](#index)

---
## FILES 
### # Create a file:
`New-Item -Path . -Name "myFile.txt" -ItemType "file" -Value "This is a text string inside the file":`
   [back to index.](#index)

### # Rename a file:
`Rename-Item -Path "fileOldName.txt" -NewName "fileNewName.txt" `
   [back to index.](#index)

### - Move a file:
`Move-Item name name2`
   [back to index.](#index)
   
### Copy a file:
`Copy-Item -Path "c:\logFiles\*" -destination "c:\Draws" -Recurse`
   [back to index.](#index)
