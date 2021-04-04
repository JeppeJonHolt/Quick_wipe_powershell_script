$testchoco = powershell choco -v

if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    chocolatey feature enable -n allowGlobalConfirmation #to skip confimation step
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
    chocolatey feature enable -n allowGlobalConfirmation
    #Install-with-choco
    #choco uninstall postgresql13
    #find a way to install barrier od Synergy
}
#Write-Output "$PSScriptRoot"
Start-Process powershell -verb runas -ArgumentList "-file $PSScriptRoot\Program_install.ps1"