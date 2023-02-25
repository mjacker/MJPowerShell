## Powershell Vim Keybindings
To make the integration more seamless place this in your PowerShell profile

```
$VIMEXEPATH = "c:\<location>\vim.exe"

Set-Alias vim	$VIMEXEPATH
Set-Alias vi	$VIMEXEPATH
Set-PSReadLineOption -EditMode vi
```

I'd aldo recommend adding the following to your `vimrc` file so it executes shell commands with Powershel itself.

```
set shell=powershell
set shellcmdflag=-command
```

