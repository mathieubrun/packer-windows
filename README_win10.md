# Create a Windows 10 pro VirtualBox VM

Install prerequisites
- virtualbox
- packer
- vagrant

Download Windows + Office
- https://www.microsoft.com/fr-fr/software-download/windows10ISO
  - Win10 Pro
  - English
  - 64 bits
  - Save : ./iso/Win10_x64.iso
- https://www.microsoft.com/en-us/download/details.aspx?id=49117
  - Save : ./vagrant/office/setup.exe

Create packer image
```` sh
packer build --only=virtualbox-iso windows_10.json
````

Create vagrant box
````sh
cd vagrant && vagrant up
````

Get Activation Key from BIOS
```` sh
sudo hexdump -s 56 -e '"MSDM key: " /29 "%s\n"' /sys/firmware/acpi/tables/MSDM
````

Appearance & performance
- Start
  - "Adjust appearance and performance" > Adjust for performance
  - Display settings > Scale and layout > 125%

Activation
- Start
  - "Activation settings"
  - "Change product key" > Put product key
  - Activation will fail but key has changed in dialog
  - "Activate after hardware change"
