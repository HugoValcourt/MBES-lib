$CMD1='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\datagram-dump.exe'
$CMD2='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\cidco-decoder.exe'
$CMD3='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\datagram-list.exe'
$CMD4='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\georeference.exe'
$CMD5='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\data-cleaning.exe'
$CMD6='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\pcl-viewer\viewer.exe'
$CMD7='"C:\Program Files (x86)\Windows Kits\10\App Certification Kit\signtool" sign /debug /tr http://timestamp.digicert.com /td sha256 /fd sha256 /a build\bin\overlap\overlap.exe'

Run("cmd.exe")
Sleep(2000)
Send($CMD1)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD2)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD3)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD4)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD5)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD6)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

Sleep(2000)
Send($CMD7)
Send("{Enter}")
Sleep(8000)
Send("SuperCIDCO42$")
Send("{Enter}")
Sleep(4000)

WinClose("C:\Windows\SYSTEM32\cmd.exe", "")
