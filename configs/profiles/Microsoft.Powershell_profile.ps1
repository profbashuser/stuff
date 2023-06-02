# Transitientprompt
Function Invoke-Starship-TransientFunction {
    &starship module character
}
# Functions

# Deletes command history jic
Function dieHist {
    Remove-Item -Recurse -Force C:\Users\matti\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt
    echo "History removed"
}

# Git shit

# Remove git repo
Function degit {
    $dir = $args[0]
    if ($null -eq $dir) {
        echo "No directory supplied"
        break
    }
    Remove-Item -Recurse -Force "$dir/.git"
    if ("." -eq $dir) {
        echo "Removed Git Repository at the current directory"    
    } else {
        echo "Removed Git Repository at $dir"
    }
}

Function gitsync {
    git push --quiet
    git pull --quiet
    echo "Done"
}

# Touch thing
Function touch {
    $file = $args[0]
    if ($null -eq $file) {
        echo "No filename supplied"
        break
    }
    New-Item -ItemType file $file
}

# Aliases
Set-Alias grep findstr         # findstr is grep
Set-Alias bash sh              # MINGW shell alias
Set-Alias make mingw32-make    # MINGW make alias
Set-Alias zip Compress-Archive # So i can just fukin type "zip" instead of fukmfna "Compress-Archive"

# Expressions
Invoke-Expression (&starship init powershell) # Prompt

# Transitientprompt
Enable-TransientPrompt
