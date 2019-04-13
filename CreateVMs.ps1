$NewVMParam = @{

    Name = 'Enter Name Here'
    MemoryStartUpBytes = 1GB
    Path = "D:\"
    SwitchName = "Internal"
    NewVHDPath = "D:\VHD"
    NewVHDSizeBytes = 20GB
    ErrorAction = 'Stop'
    Verbose = $True
}

$VM = New-VM @NewVMParam

$SetVMParam = @{
    ProcessorCount = 1
    DynamicMemory = $True
    MemoryMinimumBytes = 512MB
    MemoryMaximumBytes = 1GB
    ErrorAction = 'Stop'
    PassThru = $True
    Verbose = $True
}

$VM = $VM | Set-VM @SetVMParam

$VMDVDParam = @{
    VMName = 'NameofVM'
    Path = 'D:\ISO'
    ErrorAction = 'Stop'
    Verbose = $True
}

Set-VMDvdDrive @VMDVDParam

$VM | Start-VM -Verbose