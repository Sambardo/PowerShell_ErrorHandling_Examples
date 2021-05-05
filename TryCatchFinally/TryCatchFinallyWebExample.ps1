#You can view the docs here to find info on exceptions before you write the code
#https://msdn.microsoft.com/en-us/library/system.net.webclient(v=vs.110).aspx
#https://msdn.microsoft.com/en-us/library/ez801hhe(v=vs.110).aspx

$wc = New-Object System.Net.WebClient
$folder = [Environment]::GetFolderPath("Desktop")
$url = "https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RW7Yit?ver=9e78&m=6&w=752&h=423&n=t&q=60&o=f&l=t&b=white"

Try
{
    #throw "custom"
    #$wc.DownloadFile($url, "$folder\Test.jpg")
    #$wc.DownloadFile("FAKE", "$folder\Test.jpg") #incorrect URL
    $wc.DownloadFile($null, "$folder\Test.jpg") #no data for URL
}
Catch [System.Net.WebException]
{
     Write-host "Couldn't find website" -ForegroundColor Magenta 
}
Catch [ArgumentNullException]
{
     Write-host "URL or FileName were null" -ForegroundColor Magenta 
}
Catch
{
    Write-host "Caught unexpected error:" $_.exception.message -ForegroundColor yellow
}
Finally
{
    if($wc)
    {
        $wc.Dispose()
    }
}