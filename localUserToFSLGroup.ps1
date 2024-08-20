$regPath = "HKLM:\SOFTWARE\FSLogix\profiles"
try
{
New-ItemProperty -Path $regPath -Name FlipFlopProfileDirectoryName -PropertyType DWORD -Value 1 -Force
##Add-LocalGroupMember -Group "FSLogix Profile Exclude List" -Member "3mlocaladmin"
##Add-LocalGroupMember -Group "FSLogix ODFC Exclude List" -Member "3mlocaladmin"
##Write-Output "Script Completed"
}
catch {}
