$procs = Get-Process "POWERPNT", “FAKE", "Fake2","Fake3", "notepad" -ErrorAction SilentlyContinue
if(!$?) 
{
    #notice its only showing the most recent error, but the cmdlet threw many errors
    Write-host "$($error[0].TargetObject) could not be found" -ForegroundColor Magenta
}

#using -ErrorVariable and a loop gets them all
$procs = Get-Process "POWERPNT", “FAKE", "Fake2","Fake3", "notepad" -ErrorAction SilentlyContinue -ErrorVariable MyErrors
if(!$?) 
{
    foreach($e in $Myerrors)
    {
        Write-host "$($e.TargetObject) could not be found" -ForegroundColor Magenta
    }
}

#can add multiple lines to ErrorVariable but pre-pending + to the name
Get-Process “FAKE" -ErrorAction SilentlyContinue -ErrorVariable MyErrors
Get-Process “FAKE2" -ErrorAction SilentlyContinue -ErrorVariable MyErrors

#Only shows the 1 error from the line above
$Myerrors.count

#the + adds the error from this line to the existing error variable
Get-Process “FAKE3" -ErrorAction SilentlyContinue -ErrorVariable +MyErrors
$Myerrors.count



#Can change to see specific error info
$errorview=”CategoryView“
Get-Process “FAKE" 
$errorview=$Null
Get-Process “FAKE"