Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$mslloginscriptgui = New-Object system.Windows.Forms.Form
$mslloginscriptgui.ClientSize = New-Object System.Drawing.Point(400,300)
$mslloginscriptgui.text = "MSL Login Script"
$mslloginscriptgui.TopMost = $false

$KeePassPW = New-Object system.Windows.Forms.MaskedTextBox
$KeePassPW.multiline = $false
$KeePassPW.text = "KeePassPW"
$KeePassPW.width = 200
$KeePassPW.height = 50
$KeePassPW.visible = $true
$KeePassPW.enabled = $true
$KeePassPW.location = New-Object System.Drawing.Point(100,50)
$KeePassPW.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$KeePassPW.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("")

$work = New-Object system.Windows.Forms.Button
$work.text = "work"
$work.width = 200
$work.height = 50
$work.location = New-Object System.Drawing.Point(100,125)
$work.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$privat = New-Object system.Windows.Forms.Button
$privat.text = "privat"
$privat.width = 200
$privat.height = 50
$privat.location = New-Object System.Drawing.Point(100,200)
$privat.Font = New-Object System.Drawing.Font('Microsoft Sans Serif',10)



$mslloginscriptgui.controls.AddRange(@($work,$privat,$KeePassPW))

$work.Add_Click({Write-Host $KeePassPW.Text
$mslloginscriptgui.Close()})


[void]$mslloginscriptgui.ShowDialog()



