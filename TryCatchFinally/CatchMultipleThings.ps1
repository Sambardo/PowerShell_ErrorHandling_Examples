Try
{
    Write-host "I am going to divide by zero" -ForegroundColor Green

    #If you throw this custom error first the generic catch picks it up instead
    #throw "custom"
    
    $a = 1/0
}
Catch [DivideByZeroException]
{
     Write-host "You can't divide by Zero!" -ForegroundColor Magenta 
}
Catch
{
    Write-host "Caught" $_.exception.message -ForegroundColor yellow
}


Try
{
    Write-host "Attempting to call a fake command" -ForegroundColor Green
    Summon-Meseeks
}
Catch [System.Management.Automation.CommandNotFoundException] 
{
    Write-host "Did you fat finger the command name?" $_.Exception.CommandName "is not a real command" -ForegroundColor red
}
Catch
{
    Write-host "Caught" $_.exception.message -ForegroundColor yellow
}

Write-host "Still running?" -ForegroundColor Green
