(get-content -Encoding UTF8 webcalendar.ics) | foreach-object {$_ -replace "\?\x80\?", " "} | foreach-object {$_ -replace "\?\x99\?", " "} | foreach-object {$_ -replace "\?\x92\?", " "} | foreach-object {$_ -replace "\?\x85\?", " "} | set-content webcalendar.ics
(get-content webcalendar.ics)  | set-content webcalendar.ics -Encoding UTF8
