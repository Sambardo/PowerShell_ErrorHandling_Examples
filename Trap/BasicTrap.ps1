#region TRAPS
trap 
{
    Write-host "trapped" $_.exception.message -ForegroundColor yellow

    #can rethrow the error if you can't actually fix the problem
    #break

    #Can suppress the error message if you do fix the problem
    continue
}
#endregion

Write-host "starting" -ForegroundColor Green

fake-command
Get-Process fake -ErrorAction stop
throw "custom error" 

Write-host "Still running?" -ForegroundColor Green
