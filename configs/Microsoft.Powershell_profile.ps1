# Functions
function Invoke-Starship-TransientFunction {
    &starship module character
}

function degit {
    Remove-Item -Recurse -Force .git
}

# Aliases
Set-Alias grep findstr

# Starship and prompt
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

neofetch
