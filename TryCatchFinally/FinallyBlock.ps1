#finally block will always run, even if you terminate this code with ctrl+C
try
{
    throw "womp womp"
}
Catch
{
    #throw
    while($true)
    {
        write-host "I'm stuck in the catch block, somebody kill me!!!!!!!!!" -ForegroundColor Cyan
    }
}
Finally
{
     write-host "It's finally over" -ForegroundColor Yellow
}

write-host "still running?" -ForegroundColor Green

