trap {
    write-host "trapped" -ForegroundColor Yellow
    #throw $_
    continue
}

Try
{
    Throw "custom"
}
Catch
{
    write-host "Caught" -ForegroundColor Magenta
    #If you rethrow your trap can grab it, but the catch picks it up first
    throw 
}

throw "custom2"

throw "custom3"

write-host "end" -ForegroundColor Red