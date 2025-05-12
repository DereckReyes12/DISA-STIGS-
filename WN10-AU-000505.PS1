# Step 1: Create the required registry path if it doesn't exist
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Force

# Step 2: Set the MaxSize value to 1024000 KB (1 GB)
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security" -Name "MaxSize" -PropertyType DWord -Value 1024000 -Force

After running the script:

Open Registry Editor (regedit)

Navigate to:

HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security
You should now see a MaxSize key set to 1024000 (decimal)

