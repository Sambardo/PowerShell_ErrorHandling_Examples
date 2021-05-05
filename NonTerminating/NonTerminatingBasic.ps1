$procs = Get-Process "POWERPNT", “FAKE" -ErrorAction SilentlyContinue
if(!$?) #did you error?
{
    Write-host "Error occurred"
    #$error[0] stores the most recent error
}