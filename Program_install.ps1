function Set_PATH_Var{
    Param(
    [parameter(Mandatory=$true)]
    [String]
    $Path)
    $oldpath = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).path
    Write-Host $Path
    $newPath = "$oldpath;$Path"
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath
}
function Install-with-choco {
    Install-Com
    install-creative
    install-nord
    install_prog_tools
    Install_hardware_setup
    Install-Text-Editors
}

function Install-Com {
    choco install steam
    choco upgrade steam

    choco install discord
    choco upgrade discord

    choco install microsoft-teams.install
    choco upgrade microsoft-teams.install
}

function Install_hardware_setup {
    choco install logitech-options
    choco upgrade logitech-options

    choco install steelseries-engine
    choco upgrade steelseries-engine

    choco install icue
    choco upgrade icue
    
}

function Install-Text-Editors {
    choco install vscode #install vscode
    choco upgrade vscode #update
    Set_PATH_Var "C:\Users\$env:UserName\AppData\Local\Programs\Microsoft VS Code\bin"
    
    choco install visualstudio2019community
    choco upgrade visualstudio2019community

    choco install postgresql13
    choco upgrade postgresql13

    choco install arduino
    choco upgrade arduino
}

function install-nord {
    choco install nordpass
    choco upgrade nordpass

    choco install nordlocker
    choco upgrade nordlocker

    choco install nordvpn
    choco upgrade nordvpn
}

function install-creative {
    choco install krita
    choco upgrade krita
}

function install_prog_tools {
    choco install autohotkey
    choco upgrade autohotkey

    choco install git
    choco upgrade git

    choco install github-desktop
    choco upgrade github-desktop
    
    choco install vmware-workstation-player
    choco upgrade vmware-workstation-player

    choco install fiddler
    choco upgrade fiddler

    choco install postman
    choco upgrade postman
}


Install-with-choco
Start-Process powershell -verb runas -ArgumentList "-file $PSScriptRoot\vscode_ex.ps1"