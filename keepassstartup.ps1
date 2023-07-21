Start-Process -FilePath "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "-new-window https://trusted.bedag.ch/"
Start-Sleep -Seconds 10
$wshell = New-Object -ComObject wscript.shell;

$wshell.AppActivate('Trusted SSLVPN für uBWP')
$wshell.SendKeys('rbdk{TAB}P@$$w0rd{TAB}P!N154829')


KPScript -c:GetEntryString "x:\keemppriv.kdbx" -pw:d1ad0kh1wdUudH1vJfmA6 -Field:Password -ref-Title:"Remote trusted - https://trusted.bedag.ch/ (FireFox)" -Spr
KPScript -c:GetEntryString "x:\keemppriv.kdbx" -pw:d1ad0kh1wdUudH1vJfmA6 -Field:pin -ref-Title:"Remote trusted - https://trusted.bedag.ch/ (FireFox)" -Spr
KPScript -c:ListGroups "c:\Data\PSAutomation\keemppriv-bedag.kdbx" -pw:P@$$w0rd

"KPScript.exe" "-c:GetEntryString" "MyDatabase.kdbx" "-pw:MyPassword" "-keyfile:C:\MyDatabase.key" "-refx-group:mygroup" "-ref-Title:My Entry" "-Field:URL"


"C:\Program Files\KeePass Password Safe 2\KPScript.exe" "-c:GetEntryString" "MyDatabase.kdbx" "-pw:MyPassword" "-keyfile:C:\MyDatabase.key" "-refx-group:mygroup" "-ref-Title:My Entry" "-Field:URL"

set-location

Invoke-Expression -command 'KPScript.exe -c:GetEntryString "x:\keemppriv.kdbx" -pw:dP@$$w0rd -Field:UserName -ref-Title:"Remote trusted - https://trusted.bedag.ch/ (FireFox)" -Spr'

"KPScript.exe" "-c:GetEntryString" "MyDatabase.kdbx" "-pw:MyPassword" "-keyfile:C:\MyDatabase.key" "-refx-group:mygroup" "-ref-Title:My Entry" "-Field:URL"