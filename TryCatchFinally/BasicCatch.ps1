Try
{
    Write-host "start of try" -ForegroundColor Green
    throw "custom error" 

    #The try/catch just moves on to line 15 and doesn't return to run these lines
    Write-host "Does this line run???" -ForegroundColor Green
}
Catch
{
    Write-host "Caught" $_.exception.message -ForegroundColor yellow
    #Can rethrow easily if you don't fix the problem
    #throw
}

Write-host "Still running?" -ForegroundColor Green