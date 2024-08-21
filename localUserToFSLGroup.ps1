$nowTime = $(get-date -f dd-MM-yy_hh-mm-ss)
Start-Transcript -Path C:\Windows\Temp\sfc_$nowTime.log 
#$regPath = "HKLM:\SOFTWARE\FSLogix\profiles"
try
{
#New-ItemProperty -Path $regPath -Name FlipFlopProfileDirectoryName -PropertyType DWORD -Value 1 -Force
##Add-LocalGroupMember -Group "FSLogix Profile Exclude List" -Member "3mlocaladmin"
##Add-LocalGroupMember -Group "FSLogix ODFC Exclude List" -Member "3mlocaladmin"
Write-Output "Script Completed"
}
catch {}
Stop-Transcript
