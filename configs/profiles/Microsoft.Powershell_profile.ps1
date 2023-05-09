# Functions
Function Invoke-Starship-TransientFunction {
    &starship module character
}

function degit {
    Remove-Item -Recurse -Force .git
    echo "Removed Git Repository"
}

function dieHist {
    Remove-Item -Recurse -Force C:\Users\matti\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt
    echo "History removed"
}

Function touch {
    $file = $args[0]
    if ($null -eq $file) {
        throw "No filename supplied"
    }
    New-Item -ItemType file $file
}

Function loadbash {
    cls
    & 'C:\Program Files\Git\bin\sh.exe' --login
}

# Aliases
Set-Alias grep findstr

# Starship and prompt
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

cls
neofetch