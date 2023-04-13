$packages = @(
    "Microsoft.VisualStudio.2022.Community --silent --override '--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.Unity'",
    "Discord.Discord",
    "Telerik.Fiddler.Classic",
    "GitHub.GitHubDesktop",
    "Git.Git",
    "Postman.Postman",
    "NordVPN.NordVPN",
    "Microsoft.VisualStudioCode",
    "Microsoft.PowerToys",
    "devtoys",
    "python",
    "ColdTurkeySoftware.ColdTurkeyBlocker",
    "Valve.Steam"
)

# Install winget
Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.1.1264/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle -OutFile winget.appxbundle
Add-AppxPackage .\winget.appxbundle

# Install dotnet
Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/c86f8dbe-05ba-44af-91cb-f2f6c89c6d03/3e475eae11ec45d7d83c307e0035597a/dotnet-sdk-6.0.100-win-x64.exe -OutFile dotnet-sdk.exe
.\dotnet-sdk.exe

foreach ($package in $packages) {
    Write-Host "$($package): installing now..."
    winget install -e $package
}