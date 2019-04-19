function Do-Math {

    Param(
        $num1,
        $num2,
        $operation
    )

    Function Addition {
        Param($N1, $N2)
        Write-Output($N1 + $N2)
    }

    Function Subtract {
        Param($N1, $N2)
        Write-Output($N1 - $N2)
    }

    Function Multiply {
        Param($N1, $N2)
        Write-Output($N1 * $N2)
    }

    Function Divide {
        Param($N1, $N2)
        Write-Output($N1 / $N2)
    }

    switch ($operation) {
        "Add" { $Data = Addition -N1 $num1 -N2 $num2 }
        "Subtract" { $Data = Subtract -N1 $num1 -N2 $num2 }
        "Multiply" { $Data = Multiply -N1 $num1 -N2 $num2 }
        "Divide" { $Data = Divide -N1 $num1 -N2 $num2 }
    }

    Write-Output $Data

}