$packages = @(
    "Microsoft.VisualStudio.2022.Community",
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

foreach ($package in $packages) {
    Write-Host "$package: installing now..."
    winget install $package
}