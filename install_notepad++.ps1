#HEY! LISTEN! Do this first, 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted'
$null = New-Item -ItemType Directory -Force -Path C:\temp
Write-Host Downloading Notepad++... Please Wait! `(Progress bar disabled for speed`)
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5/npp.8.5.Installer.x64.exe -OutFile C:\temp\Notepad++_Setup.exe -UseBasicParsing
Start-Process -Wait -FilePath C:\temp\Notepad++_Setup.exe -ArgumentList "/S"
Remove-Item C:\temp\Notepad++_Setup.exe