<#
 AUTHOR  : Jones, J.
 CREATED : 2017.09.12
 UPDATED : 2017.09.12
 COMMENT : Active Directory User Object Export
#>

Import-Module ActiveDirectory
Get-ADUser -Filter * -SearchBase "OU=Test-OU,DC=test,DC=net" -Properties * |
Select -Property givenName,sn,sAMAccountName,Mail,Description,Department | 
Export-CSV "C:\Temp\test-extract.csv" -NoTypeInformation -Encoding UTF8