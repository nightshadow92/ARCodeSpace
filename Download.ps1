node .\irc-down.js
gci -file | where {$_.name -match "subsplease"} | foreach {

    .\MegaUpload.exe $_.FullName
}