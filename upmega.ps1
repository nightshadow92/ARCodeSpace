Get-ChildItem ./Downloads -File | foreach {mega-put $_.fullname}
