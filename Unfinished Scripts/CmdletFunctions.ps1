Function Get-CounterData {
    Param(
        [parameter(Mandatory = $true)]
        [ValidateSet("Processor", "Disk", "Memory")]
        [string]$Data,

        [ValidateRange(1, 10)]
        [long]$MaxSamples = 1,

        [ValidateRange(1, 10)]
        [int]$SampleInterval = 1
    )

    Switch ($Data) {
        "Processor" { $Counter = "\Processor(_total)\% Processor Time" }
        "Disk" { $Counter = "\PhysicalDisk(0*)\% Disk Time" }
        "Memory" { $Counter = "\Memory\Page Faults/sec" }
    }
    Get-CounterData -Counter $Counter -MaxSamples $MaxSamples -SampleInterval $SampleInterval
}

