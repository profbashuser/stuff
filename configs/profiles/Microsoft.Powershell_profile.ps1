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

# Aliases
Set-Alias grep findstr # findstr is grep
Set-Alias bash sh # MINGW shell alias

# Expressions
Invoke-Expression (&scoop-search --hook)
Invoke-Expression (&starship init powershell)

# Transitientprompt
Enable-TransientPrompt

# cls
# neofetch
