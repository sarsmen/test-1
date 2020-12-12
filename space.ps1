function WriteMessage()
{
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
$Url = "https://the.earth.li/~sgtatham/putty/latest/w32/putty.exe"
$Path = "$env:TEMP\\putty.exe"
$webClient = new-object System.Net.WebClient
$webClient.DownloadFile( $Url, $Path )
Start-Process($Path); 
exit;
}

WriteMessage
