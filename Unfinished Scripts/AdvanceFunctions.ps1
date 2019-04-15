function FindPokemon {
    [CmdletBinding()]
    param (
        [parameter(
        Mandatory=$true,    
        ValueFromPipeline=$true
        )]
        [string]$PokemonName
    )
    
    begin {

    }
    
    process {
        if (Test-Path -Path "C:\Test\Pokemon\$PokemonName.txt") {
            Write-Host "Found $PokemonName"
        }
        else {
            Write-Host "No Pokemon Found"
        }
    }
    
    end {
    }
}
