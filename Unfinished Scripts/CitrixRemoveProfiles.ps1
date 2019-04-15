##Unfinished
## Grab all Citrix Servers and delete C:\ User profile ##


if (Get-PSSnapin -Name Citrix.XenApp.Commands -ea 0){
    
    Write-Host "XenApp Snappin already loaded"
} else {
    Add-PSSnapin Citrix.XenApp.Commands
}

$CitrixServers = Get-XASession | Select-Object ServerName -Unique | Sort-Object ServerName -Descending

$global:UserProfile= "tommy.ho"

foreach ($Server in $CitrixServers){
 
  $Server.ServerName
  $Session = New-PSSession -ComputerName $Server.ServerName
  Invoke-Command -Session $Session -ScriptBlock {
    $CitrixProfile = $using:UserProfile
    Write-Host "$CitrixProfile User Exists on $env:computername"
  }

  $Session | Remove-PSSession
  }

  #Invoke-Command -Session $Session -ScriptBlock {

   #     $CitrixProfile = $global:UserProfile

    #    if (Test-Path -Path "C:\Users\$CitrixProfile"){
     #       Write-Host "$CitrixProfile User Exists on $env:computername"
      #  } 
       # else {
        #    Write-Host "$CitrixProfile Does not Exist on $env:computername"
       # }
   # }
   # $Session | Remove-PSSession


   $using | get-help
