#I'm not sure why this trap isn't triggered
trap [System.Management.Automation.ItemNotFoundException] 
{
    Write-Host "Path $($_.TargetObject) not found!" -foregroundcolor green
    continue
}

#<#
trap 
{
    $_.Exception.GetType().Fullname
    continue
}
##>

Get-ChildItem \\prox-hyperv -ErrorAction Stop

Write-Host "end" -ForegroundColor Green