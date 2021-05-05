#Generic Trap
trap {
    Write-host "trapped" $_.exception.message -ForegroundColor yellow
    continue
}


#Trap for divide by zero
trap [System.DivideByZeroException] 
{
    Write-host "You can't divide by Zero!" -ForegroundColor Magenta
    
    #Traps make a new scope, so $b isn't the same as the one in the rest of the script
    $b = 5

    continue
}

Write-host "I am throwing a custom error" -ForegroundColor Green
throw "custom error" 

Write-host "I am going to divide by zero" -ForegroundColor Green
$b = 1/0

Write-host "`$b is: $b" -ForegroundColor Green

Write-host "Calling `$b.GetType()" -ForegroundColor Green
$b.GetType()
