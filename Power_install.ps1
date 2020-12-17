$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    chocolatey feature enable -n allowGlobalConfirmation #to skip confimation step
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
    chocolatey feature enable -n allowGlobalConfirmation
    #Install-with-choco
    #choco uninstall postgresql13
    #find a way to install barrier od Synergy
}
Install-with-choco
set-exstensions_for_vscode
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
}

function set-exstensions_for_vscode {
    power_shell_extentions
    basic_functionality
    python_functionality
    c_funtionality
    database_functionality
    niche_functionality
    markdown_functionality
    unit_test_framworks
    themes
}

function power_shell_extentions {
    code --install-extension ms-vscode.powershell
}

function basic_functionality {
    code --install-extension aaron-bond.better-comments
    code --install-extension coenraads.bracket-pair-colorizer-2
    code --install-extension oderwat.indent-rainbow
    code --install-extension gruntfuggly.todo-tree
}

function python_functionality {
    code --install-extension ms-python.python
    code --install-extension njpwerner.autodocstring
    code --install-extension kevinrose.vsc-python-indent
    code --install-extension kiteco.kite
}

function c_funtionality {
    code --install-extension danielpinto8zz6.c-cpp-compile-run
    code --install-extension ms-vscode.cpptools
}

function database_functionality {
    code --install-extension mtxr.sqltools
    code --install-extension mtxr.sqltools-driver-pg
}
function niche_functionality {
    code --install-extension vsciot-vscode.vscode-arduino
    code --install-extension slevesque.vscode-autohotkey
    code --install-extension kleber-swf.unity-code-snippets
}

function markdown_functionality {
    code --install-extension docsmsft.docs-markdown
    code --install-extension yzhang.markdown-all-in-one
    code --install-extension yzane.markdown-pdf
    code --install-extension fcrespo82.markdown-table-formatter
    code --install-extension davidanson.vscode-markdownlint
}

function unit_test_framworks {
    code --install-extension hbenl.vscode-test-explorer
    code --install-extension littlefoxteam.vscode-python-test-adapter
}

function themes {
    code --install-extension eppz.eppz-code
    code --install-extension gerane.theme-abyss
    code --install-extension artisanbytecrafter.poptheme
    code --install-extension xen.vscode-theme-cenhanced
}
#choco install vscode-arduino

#software to add:
#(clover)http://en.ejie.me/
#(TreeSize)https://www.jam-software.com/treesize_free
#(Ditto)https://ditto-cp.sourceforge.io/ 
#(Quicklook)