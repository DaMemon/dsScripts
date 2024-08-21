$nowTime = $(get-date -f dd-MM-yy_hh-mm-ss)
$startTime = $(get-date -f dd-MM-yy_dddd_hh-mm-ss)
Start-Transcript -Path C:\Windows\Temp\sfc_$nowTime.log
Write-host "Script Started - $($startTime)"
##$regPath = "HKLM:\SOFTWARE\FSLogix\profiles"
try
{
#New-ItemProperty -Path $regPath -Name FlipFlopProfileDirectoryName -PropertyType DWORD -Value 1 -Force #| Out-Default -Transcript
Add-LocalGroupMember -Group "FSLogix Profile Exclude List" -Member "3mlocaladmin"
Add-LocalGroupMember -Group "FSLogix ODFC Exclude List" -Member "3mlocaladmin"
}
catch {}
Write-Information "Script Completed" ##-Verbose
Stop-Transcript
