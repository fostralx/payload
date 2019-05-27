$File = ""C:\флаг.txt"";
$ftp = "ftp://ih1562471:FmgLXptE2mUW@193.124.176.46";

Write-Host -Object "ftp url: $ftp";

$webclient = New-Object -TypeName System.Net.WebClient;
$uri = New-Object -TypeName System.Uri -ArgumentList $ftp;

Write-Host -Object "Uploading $File...";

$webclient.UploadFile($uri, $File);
