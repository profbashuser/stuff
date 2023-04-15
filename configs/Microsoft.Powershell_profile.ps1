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
        default {
            echo "Invalid location"
        }
    }

    ls
}

# Aliases
Set-Alias grep findstr

# Starship and prompt
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

cls
neofetch
