Get-ChildItem ./download -File | foreach {mega-put $_.fullname}
