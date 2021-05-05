#unlike the trap, this exception is detected by the specific catch
Try 
{
    Get-ChildItem \\FakePath -ErrorAction Stop
} 
Catch [System.Management.Automation.ItemNotFoundException] 
{
    Write-Host "Path $($_.TargetObject) not found!" -foregroundcolor green
} 
Catch 
{
    Write-Host "Catch all" -foregroundcolor yellow
}