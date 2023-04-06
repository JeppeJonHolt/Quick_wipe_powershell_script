# define the list of executables
$exeList = @(
    "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.16.10262.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe",
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NoFWL\NoFWL.lnk",
    "C:\Users\jeppe\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Messenger.lnk",
    "C:\Users\jeppe\Desktop\Discord.lnk",
    "ms-todo://"
    "spotify"
)

$delay = 5
$delayMs = [int]$delay * 1000
Start-Sleep -Milliseconds $delayMs

foreach ($exeName in $exeList) {
    Write-Host "Starting $($exeName)"
    Start-Process $exeName
}
