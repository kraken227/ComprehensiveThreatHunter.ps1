# ComprehensiveThreatHunter.ps1
# This script performs a comprehensive enumeration of a Windows host to detect malware and gather important system information.

$OutputFile = "ComprehensiveThreatHunterResults.txt"

# Helper function to append output to the file
function Append-Output {
    param (
        [string]$Content
    )
    Add-Content -Path $OutputFile -Value $Content
    Add-Content -Path $OutputFile -Value "`n"
}

# Start script
"Comprehensive Threat Hunter Report - $(Get-Date)" | Append-Output

# 1. Process Enumeration
"==== Process Enumeration ====" | Append-Output
Get-Process | Format-Table -AutoSize | Out-String | Append-Output

# 2. Network Connections
"==== Network Connections ====" | Append-Output
Get-NetTCPConnection | Format-Table -AutoSize | Out-String | Append-Output

# 3. Service Status
"==== Service Status ====" | Append-Output
Get-Service | Format-Table -AutoSize | Out-String | Append-Output

# 4. Event Log Analysis
"==== Event Log Analysis ====" | Append-Output
Get-EventLog -LogName Security -Newest 100 | Format-Table -AutoSize | Out-String | Append-Output

# 5. Scheduled Tasks
"==== Scheduled Tasks ====" | Append-Output
Get-ScheduledTask | Format-Table -AutoSize | Out-String | Append-Output

# 6. Startup Items
"==== Startup Items ====" | Append-Output
Get-CimInstance -ClassName Win32_StartupCommand | Format-Table -AutoSize | Out-String | Append-Output

# 7. Antivirus and Security Software Status
"==== Antivirus and Security Software Status ====" | Append-Output
Get-CimInstance -Namespace "root\SecurityCenter2" -ClassName AntivirusProduct | Format-Table -AutoSize | Out-String | Append-Output

# 8. File System Scan (Example for C:\Windows)
"==== File System Scan ====" | Append-Output
Get-ChildItem -Path C:\Windows -Recurse | Get-FileHash | Format-Table -AutoSize | Out-String | Append-Output

# 9. Registry Anomalies Detection (Example for Run keys)
"==== Registry Anomalies Detection ====" | Append-Output
Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" | Format-Table -AutoSize | Out-String | Append-Output

# 10. User Account Enumeration
"==== User Account Enumeration ====" | Append-Output
Get-LocalUser | Format-Table -AutoSize | Out-String | Append-Output

# 11. Autorun Entries Check
"==== Autorun Entries Check ====" | Append-Output
Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce" | Format-Table -AutoSize | Out-String | Append-Output

# 12. Hidden Files and Folders Detection
"==== Hidden Files and Folders Detection ====" | Append-Output
Get-ChildItem -Path C:\ -Hidden -Recurse | Format-Table -AutoSize | Out-String | Append-Output

# 13. File Hash Calculation (Example for C:\Windows\System32)
"==== File Hash Calculation ====" | Append-Output
Get-ChildItem -Path C:\Windows\System32 -File | Get-FileHash | Format-Table -AutoSize | Out-String | Append-Output

# 14. WMI Query Script
"==== WMI Query Script ====" | Append-Output
Get-WmiObject -Query "SELECT * FROM Win32_Process" | Format-Table -AutoSize | Out-String | Append-Output

# 15. Driver and DLL Check
"==== Driver and DLL Check ====" | Append-Output
Get-WmiObject Win32_SystemDriver | Format-Table -AutoSize | Out-String | Append-Output

# 16. Memory Dump Analysis
"==== Memory Dump Analysis ====" | Append-Output
# Note: Creating a memory dump requires admin privileges and is complex. This is a placeholder.
"Memory Dump Analysis is a placeholder and requires specialized tools." | Append-Output

# 17. DNS Query Logs Analysis
"==== DNS Query Logs Analysis ====" | Append-Output
# Note: Requires DNS logging to be enabled. This is a placeholder.
"DNS Query Logs Analysis is a placeholder and requires DNS logging to be enabled." | Append-Output

# 18. System Information Collection
"==== System Information Collection ====" | Append-Output
Get-ComputerInfo | Format-List | Out-String | Append-Output

# 19. Browser History and Cache Analysis
"==== Browser History and Cache Analysis ====" | Append-Output
# Note: Requires browser-specific commands. This is a placeholder.
"Browser History and Cache Analysis is a placeholder and requires browser-specific commands." | Append-Output

# 20. Event Log Clearing Detection
"==== Event Log Clearing Detection ====" | Append-Output
Get-EventLog -LogName Security | Where-Object { $_.EventID -eq 1102 } | Format-Table -AutoSize | Out-String | Append-Output

# End of script
"==== End of Report ====" | Append-Output