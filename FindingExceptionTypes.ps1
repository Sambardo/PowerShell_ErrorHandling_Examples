try
{
   # garbage-command or anything that causes an error
   invoke-command -ComputerName FAKE -ScriptBlock {get-process} -EA stop
}
catch
{
    #You can also put this into a generic trap when logging error info
    $_.exception.gettype().fullname
}

Write-Host "end of script" -ForegroundColor Green