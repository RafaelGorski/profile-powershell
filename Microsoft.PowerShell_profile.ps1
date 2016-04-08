# Rafael Gorski's POwershell Profile to load posh-git and posh-svn
# Code adapted from http://stackoverflow.com/questions/4500134/posh-git-and-posh-hg-together

function isCurrentDirectoryARepository($type) {

    if ((Test-Path $type) -eq $TRUE) {
        return $TRUE
    }

    # Test within parent dirs
    $checkIn = (Get-Item .).parent
    while ($checkIn -ne $NULL) {
        $pathToTest = $checkIn.fullname + '/' + $type;
        if ((Test-Path $pathToTest) -eq $TRUE) {
            return $TRUE
        } else {
            $checkIn = $checkIn.parent
        }
    }
    return $FALSE
}

# Posh-Svn and Posh-git prompt on $PWD.Path
Push-Location 'C:\work\git\profile-powershell'
	.\posh-svn\profile.example.ps1
	.\posh-git\profile.example.ps1
Pop-Location

function prompt(){
    # Reset color, which can be messed up by Enable-GitColors
    $Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor

    Write-Host($pwd) -nonewline

    if (isCurrentDirectoryARepository(".git")) {
        # Git Prompt
        $Global:GitStatus = Get-GitStatus
        Write-GitStatus $GitStatus
    } elseif (isCurrentDirectoryARepository(".svn")) {
        # Mercurial Prompt
        $Global:SvnStatus = Get-SvnStatus
        Write-SvnStatus $SvnStatus
    }

    return "> "
}