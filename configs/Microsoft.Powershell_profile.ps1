# Functions
function Invoke-Starship-TransientFunction {
    &starship module character
}

# Aliases
Set-Alias grep findstr

# Starship and prompt
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt

neofetch
