
##Common

#List command
Get-Command 

#List command filter by name
Get-Command -name *IP*


##Help

#Get help for particular command
Get-Help Get-Service
Help Get-Service

## Format output view to list

#Format output using table
Get-Service | Format-Table -AutoSize

#Format output using table with selective property
Get-Service | Format-Table -Property Status, Name, StartType -AutoSize

#Format output using list
Get-Service | Format-List -Property *


##Services

#Get service by name start with
Get-Service -Name WPC*

#Get service by displayName start with
Get-Service -Displayname RWS*

#Get service by status
Get-Service | Where-Object {$_.status -eq "running"}

##Eventlog

#Get latest eventlog
Get-Eventlog -log CMS -newest 1 | fl -property *
