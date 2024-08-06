# ComprehensiveThreatHunter.ps1

**ComprehensiveThreatHunter.ps1**

This PowerShell script, named **ComprehensiveThreatHunter.ps1**, is designed to perform an extensive enumeration of a Windows host to detect potential malware and gather critical system information. It aggregates the output from 20 different checks and writes the results to a well-formatted text file named `ComprehensiveThreatHunterResults.txt`.

### Description of the Script's Functionality:

1. **Process Enumeration**: Lists all running processes, providing details such as process ID, parent process, and executable path.
2. **Network Connections**: Enumerates all active network connections and open ports, identifying unusual or suspicious connections.
3. **Service Status**: Displays all services and their current status, highlighting any abnormal or newly installed services.
4. **Event Log Analysis**: Analyzes the Security event log, extracting the latest 100 entries to detect suspicious activities such as login failures or security warnings.
5. **Scheduled Tasks**: Lists all scheduled tasks to uncover any unauthorized or suspicious tasks.
6. **Startup Items**: Checks startup items in both the registry and startup folders to identify potential malware persistence mechanisms.
7. **Antivirus and Security Software Status**: Reports the status and definitions of installed antivirus and other security software.
8. **File System Scan**: Scans a specified directory (e.g., C:\Windows) for known malware signatures and suspicious files.
9. **Registry Anomalies Detection**: Scans for unusual or suspicious registry keys and values, focusing on common autorun locations.
10. **User Account Enumeration**: Lists all user accounts on the system, including their privileges and last login times, to detect unauthorized accounts.
11. **Autorun Entries Check**: Checks autorun entries in the registry for persistent malware.
12. **Hidden Files and Folders Detection**: Identifies hidden files and folders across the system that may be used by malware to evade detection.
13. **File Hash Calculation**: Calculates and verifies file hashes for critical system files to detect tampering or unauthorized modifications.
14. **WMI Query Script**: Uses Windows Management Instrumentation (WMI) to query system processes and identify unusual activities.
15. **Driver and DLL Check**: Enumerates all loaded drivers and DLLs, detecting any untrusted or unsigned files.
16. **Memory Dump Analysis**: Placeholder for creating and analyzing memory dumps, requiring specialized tools and admin privileges.
17. **DNS Query Logs Analysis**: Placeholder for analyzing DNS query logs to identify unusual or malicious domain requests.
18. **System Information Collection**: Gathers detailed system information, including OS version, installed patches, and system configuration.
19. **Browser History and Cache Analysis**: Placeholder for extracting browser history and cache files to identify potential indicators of compromise.
20. **Event Log Clearing Detection**: Detects if event logs have been cleared, a common tactic used by attackers to cover their tracks.

### Running the Script:

To execute the script, open PowerShell with administrative privileges and run the following command:
```powershell
.\ComprehensiveThreatHunter.ps1
```
The script will generate a comprehensive report saved in `ComprehensiveThreatHunterResults.txt`, which can be reviewed to identify potential security threats and gather valuable system information.
