# Enable Hyper-V Enhanced Session for Debian Trixie

While there are a number of scripts floating around, my first aim was to make the minimal set of changes required.
Secondly, I wanted to have an ISO file, to make installation through Hyper-V as simple as possible.

## Installation
Download the .deb or .iso file, and install on your VM.

Then from an elevated PowerShell prompt on the Windows host:

    Stop-VM -Name <VMName>
    Set-VM -Name <VMName> -EnhancedSessionTransportType HvSocket
    Start-VM -Name <VMName>

Replace <VMName> with the name of your VM.
