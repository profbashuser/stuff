# Functions
function Invoke-Starship-TransientFunction {
    &starship module character
}

function degit {
    Remove-Item -Recurse -Force .git
    echo "Removed Git Repository"
}

function goto {
    # So i don't have to cd there
    param (
        $location
    )

    Switch ($location) {
        "code" {
            Set-Location -Path "$HOME/documents/code" # Why did i call the folder "code"
        }
        "usr" {
            Set-Location -Path "$HOME"
        }
        "adata" {
            Set-Location -Path "$HOME/Appdata/Roaming"
        }
        default {
            echo "Invalid location"
        }
    }

    ls
}

function dieHist {
    cd C:\Users\matti\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine
    Remove-Item -Recurse -Force ConsoleHost_history.txt
    echo "History removed"
}

# Aliases
Set-Alias grep findstr

# Starship and prompt
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

cls
neofetch
