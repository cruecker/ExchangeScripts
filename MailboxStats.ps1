## Script will deliver Name, RecipientType, RecipientTypeDetails, MailboxSize, ItemCount in a CSV File
## Script V1.1
## Date 22.05.2020
## Code from Claudius R�cker

Get-Mailbox -resultsize unlimited | Select-Object name,RecipientType,RecipientTypeDetails,@{n="Primary Size";e={(Get-MailboxStatistics $_.identity).totalItemsize}},@{n="Primary Item Count";e={(Get-MailboxStatistics $_.identity).ItemCount}} | export-csv -NoTypeInformation -Delimiter "," -Path C:\Temp\Claudius\Mailboxstats.txt