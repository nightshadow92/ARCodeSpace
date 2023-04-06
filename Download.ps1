node irc-down.js
gci -file | where {$_.name -match "subsplease"} | foreach {
    .\mega\MegaUpload --file $_.FullName
}
exit