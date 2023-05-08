Get-ChildItem "/home/codespace/Downloads" -File | foreach {mega-put $_.fullname}
