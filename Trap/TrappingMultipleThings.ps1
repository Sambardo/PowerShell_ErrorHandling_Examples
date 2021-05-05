#region TRAPS
trap {
    Write-host "trapped" $_.exception.message -ForegroundColor yellow
    continue
}

trap [DivideByZeroException] {
    Write-host "You can't divide by Zero!" -ForegroundColor Magenta
    continue
}

Trap [System.Management.Automation.CommandNotFoundException] {
    Write-host "Did you fat finger the command name?" $_.Exception.CommandName "is not a real command" -ForegroundColor red
    continue
}
#endregion

Write-host "I am throwing a non-terminating error" -ForegroundColor Green
#if you add -erroraction stop you'll see that it turns this into a terminating error and then the trap triggers
get-service FAKE

Write-host "I am throwing a custom error" -ForegroundColor Green
throw "custom error" 

Write-host "I am going to divide by zero" -ForegroundColor Green
$a = 1/0

Write-host "Attempting to call a fake command" -ForegroundColor Green
Summon-Meseeks


