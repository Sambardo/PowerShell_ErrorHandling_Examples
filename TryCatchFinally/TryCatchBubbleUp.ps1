Function Catchfunction {
    Try 
    { 
        Fake-Command 
    }
    Catch 
    {
        write-host "Error caught inside function" -ForegroundColor Yellow 
        Throw
    }
    "Function was completed"
}

Function Trapfunction 
{
    trap 
    {
        write-host "Error trapped inside function" -ForegroundColor Yellow 
        break
    }

    Fake-Command 
    "Function was completed"
}

Try
{ 
    #try toggling these with comments and look at how the script stack trace is shown
    Trapfunction
    Catchfunction 
}
Catch 
{ 
    write-host "Internal Function error re-thrown: $($_.ScriptStackTrace)" -ForegroundColor cyan
}

write-host "Script Completed" -ForegroundColor Green
