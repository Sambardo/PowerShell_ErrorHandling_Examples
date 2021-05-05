#Traps can live anywhere (even the bottom), but please group them together at the top

throw "custom"

Write-host "Still running?" -ForegroundColor Green

throw "custom"

Write-host "I sure am" -ForegroundColor Green

trap {
    Write-host "trapped" $_.exception.message -ForegroundColor yellow
    #throw $_
    continue
}