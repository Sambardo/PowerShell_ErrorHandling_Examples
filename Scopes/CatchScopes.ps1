#Catch stays in scope and can adjust variable values
Try
{
    Write-host "I am going to divide by zero" -ForegroundColor Green
    $a = 1/0
}
Catch [System.DivideByZeroException]
{
    Write-host "You can't divide by Zero!" -ForegroundColor Magenta
    $a = 5
    #throw
}
Catch
{
    Write-host "Caught" $_.exception.message -ForegroundColor yellow
}

Write-host "`$a is: $a" -ForegroundColor Green