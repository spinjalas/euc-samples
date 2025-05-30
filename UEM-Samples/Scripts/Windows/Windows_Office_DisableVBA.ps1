# Description: Disable Microsoft Office VBA macros on Windows via a PowerShell script.
# Execution Context: System
# Execution Architecture: EITHER64OR32BIT
# Timeout: 120

# Disabling VBA for all office apps
# Define VBA variables
$keyPath1 = "HKLM\SOFTWARE\Policies\Microsoft\Office\16.0\Common"
$valueName1 = "vbaoff"
$valueData1 = 1

# Check if the registry key exists
if (Test-Path "Registry::$keyPath1") {
    Set-ItemProperty -Path "Registry::$keyPath1" -Name $valueName1 -Value $valueData1
    Write-Host "Registry key '$valueName1' has been set to '$valueData1'."
} else {
# Create the registry key if it doesn't exist
    New-Item -Path "Registry::$keyPath1" -Force | Out-Null
    Set-ItemProperty -Path "Registry::$keyPath1" -Name $valueName1 -Value $valueData1
    Write-Host "Registry key '$valueName1' has been created and set to '$valueData1'."
}