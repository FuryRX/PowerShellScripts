Function Get-CounterData
{
  Param(
        $Data,
        $MaxSamples =1,
        $SampleInterval = 1
        )

    Switch($Data)
       {
          1 {$Counter = "\Processor(_total)\% Processor Time"}
          2 {$Counter = "\PhysicalDisk(0*)\% Disk Time"}
          3 {$Counter = "\Memory\Page Faults/sec"}
       }
       Get-Counter -Counter $Counter -MaxSamples $MaxSamples -SampleInterval $SampleInterval
}

