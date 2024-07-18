$N = @"
# |--------------------------------- IMPORTANT ----------------------------------|
# | By using this script, you agree not to claim it as your own or incorporate   |
# | it into your videos or any other external content without explicitly         |
# | crediting Yanko! This credit must be verbally acknowledgedat the beginning |
# | of the video and included as a link at the top of the video description!     |
# |------------------------------------------------------------------------------|
"@

$host.ui.RawUI.WindowTitle = "Yanko Fortnite Debloat"
$Host.UI.RawUI.BackgroundColor = "Black"
cls

Write-Host ""
echo "__  __            __        _          ____       __    __            __           ";
echo "\ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo " \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo " / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "/_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
echo "                                                                                   ";
Write-Host "" 
Write-Host "                                             Asking for Admin Privileges" -ForegroundColor White
Write-Host "________________________________________________________________________________________________________________________" -ForegroundColor White
Write-Host ""
Write-Host ""

If (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    $newProcess = Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs -Wait -PassThru
    Exit $newProcess.ExitCode
}

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Set-Location -Path (Split-Path -Path $MyInvocation.MyCommand.Path -Parent)

cls
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat" -ForegroundColor White
Write-Host "________________________________________________________________________________________________________________________" -ForegroundColor White
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                               This script is provided by Yanko. All rights reserved!" -ForegroundColor Red
Write-Host "                     Unauthorized copying of this software, via any medium, is strictly prohibited." -ForegroundColor White
Write-Host "                                           Proprietary and confidential." -ForegroundColor White
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                     Press any key to continue with the script..." -ForegroundColor White
$null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host " This script will delete " -NoNewline
Write-Host "2/3 of all Fortnite files" -ForegroundColor Yellow -NoNewline
Write-Host ", which affect and degrade your gameplay."
Write-Host " Some functions will no longer work, but if you play with the performance mode, you won't notice anything."
Write-Host ""
Write-Host " To continue with the script, please type '" -NoNewline
Write-Host "Yanko" -ForegroundColor Cyan -NoNewline
Write-Host "'"
Write-Host ""
Write-Host " >> " -ForegroundColor Cyan -NoNewline

$input = Read-Host
if ($input -ne "Yanko") {
    Write-Host""
    Write-Host " Script aborted by user, exiting..." -ForegroundColor Yellow
    Start-Sleep -Seconds 2
    exit
} else {
    Write-Host ""
    Write-Host " Preparing everything, please wait..." -ForegroundColor Cyan
    Start-Sleep -Seconds 2
}
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host " Searching for the correct Fortnite folder path  " -NoNewline
$YankoLB = @("|", "/", "-", "\")
for ($i = 0; $i -lt 10; $i++) {
    Write-Host -NoNewline ("`b" + $YankoLB[$i % $YankoLB.Length])
    Start-Sleep -Milliseconds 300
}
Write-Host -NoNewline "`b"

$drives = Get-PSDrive -PSProvider FileSystem | Where-Object { $_.Root -match '^[A-Z]:\\$' }
$YankoFortnitePath = $null
foreach ($drive in $drives) {
    $YankoFortnitePath = Get-ChildItem -Path "$($drive.Root)" -Filter Fortnite -Directory -Recurse -ErrorAction SilentlyContinue |
                           Where-Object { $_.FullName -match 'Epic Games\\' } |
                           Select-Object -First 1 -ExpandProperty FullName
    if ($YankoFortnitePath) {
        break
    }
}

cls
Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""

if (-not $YankoFortnitePath) {
    Write-Host " Fortnite installation directory not found." -ForegroundColor Yellow
    pause
    exit
}

Write-Host " Found at " -NoNewline
Write-Host ">>" -ForegroundColor Cyan -NoNewline
Write-Host " $YankoFortnitePath"
Write-Host ""
Start-Sleep -Seconds 1
Write-Host " Starting with the debloat process..."
Start-Sleep -Seconds 2

cls
Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                         Debloating Fortnite, please wait..."
Write-Host ""
Write-Host "                                                      Progress"
Write-Host "                                              [                    ] 0%"

$YankoSaved = "$env:LOCALAPPDATA\FortniteGame\Saved"
$YankoSubPathsToDelete = @(
    "Logs",
    "Config\CrashReportClient",
    "Demos",
    "Cloud",
    "PersistentDownloadDir\EMS",
    "PersistentDownloadDir\ManifestCache",
    "PersistentDownloadDir\BackgroundHttp",
    "PersistentDownloadDir\ias",
    "PersistentDownloadDir\StagingBundles",
    "PersistentDownloadDir\InstalledBundles"
)

if ($N -notmatch '\!\*') {
    $null = $null
} else {
    exit
}

foreach ($YankoSubPath in $YankoSubPathsToDelete) {
    $YankoFullPath = Join-Path -Path $YankoSaved -ChildPath $YankoSubPath
    if (Test-Path $YankoFullPath) {
        Remove-Item -Path $YankoFullPath -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Start-Sleep -Seconds 1
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                         Debloating Fortnite, please wait..."
Write-Host ""
Write-Host "                                                      Progress"
Write-Host "                                              [" -NoNewLine
Write-Host "-----" -Foregroundcolor cyan -NoNewLine
Write-Host "               ] 25%"

$YankoBinaries64 = Join-Path -Path $YankoFortnitePath -ChildPath "FortniteGame\Binaries\Win64"
$YankoFilesToDelete = @(
    "api-ms-win*",
    "dbghelp*",
    "msvcp*",
    "tbbmalloc*",
    "ucrtbase",
    "vc*",
    "concrt*",
    "ucrtbase*"
)
foreach ($YankoFile in $YankoFilesToDelete) {
    Get-ChildItem -Path $YankoBinaries64 -Filter $YankoFile | Remove-Item -Force -ErrorAction SilentlyContinue
}
Remove-Item -Path "$YankoBinaries64\D3D12" -Recurse -Force -ErrorAction SilentlyContinue
if ("$N" -notlike "*!*") { Stop-Process -Id $PID }
$YankoFortniteThirdParty = Join-Path -Path $YankoFortnitePath -ChildPath "FortniteGame\Binaries\ThirdParty"
$YankoThirdPartyToDelete = @(
    "Discord",
    "SpeechGraphics",
    "NVIDIA\NGX"
)
foreach ($YankoFolder in $YankoThirdPartyToDelete) {
    Remove-Item -Path "$YankoFortniteThirdParty\$YankoFolder" -Recurse -Force -ErrorAction SilentlyContinue
}

Start-Sleep -Seconds 1
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                         Debloating Fortnite, please wait..."
Write-Host ""
Write-Host "                                                      Progress"
Write-Host "                                              [" -NoNewLine
Write-Host "----------" -Foregroundcolor cyan -NoNewLine
Write-Host "          ] 50%"

$YankoPathsToDelete1 = @(
    "$YankoFortnitePath\FortniteGame\Content\PackagedReplays",
    "$YankoFortnitePath\FortniteGame\Content\Legal",
    "$YankoFortnitePath\FortniteGame\Content\Movies",
    "$YankoFortnitePath\FortniteGame\Content\Splash\Splash.bmp",
    "$YankoFortnitePath\Engine\Programs",
    "$YankoFortnitePath\Engine\Content",
    "$YankoFortnitePath\Engine\Plugins"
)
foreach ($YankoPath in $YankoPathsToDelete1) {
    Remove-Item -Path $YankoPath -Recurse -Force -ErrorAction SilentlyContinue
}

$YankoPathsToDelete2 = @(
    "$YankoFortnitePath\Engine\Binaries\Win64",
    "$YankoFortnitePath\Engine\Binaries\ThirdParty\CEF3",
    "$YankoFortnitePath\Engine\Binaries\ThirdParty\DbgHelp",
    "$YankoFortnitePath\Engine\Binaries\ThirdParty\NVIDIA",
    "$YankoFortnitePath\Engine\Binaries\ThirdParty\PhysX3"
)
foreach ($YankoPath in $YankoPathsToDelete2) {
    Remove-Item -Path $YankoPath -Recurse -Force -ErrorAction SilentlyContinue
}

Start-Sleep -Seconds 1
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                         Debloating Fortnite, please wait..."
Write-Host ""
Write-Host "                                                      Progress"
Write-Host "                                              [" -NoNewLine
Write-Host "---------------" -Foregroundcolor cyan -NoNewLine
Write-Host "     ] 75%"

$YankoEpicGamesLauncher = "$env:LOCALAPPDATA\EpicGamesLauncher\Saved"
$YankoPathsToDelete = @(
    "$YankoEpicGamesLauncher\Cache",
    "$YankoEpicGamesLauncher\Logs",
    "$YankoEpicGamesLauncher\Config\CrashReportClient"
)
foreach ($YankoPath in $YankoPathsToDelete) {
    if (Test-Path $YankoPath) {
        Remove-Item -Path $YankoPath -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Get-ChildItem -Path "$YankoEpicGamesLauncher\WebCache_*" -Directory | ForEach-Object { Remove-Item -Path $_.FullName -Recurse -Force -ErrorAction SilentlyContinue }

$YankoBattlEye = Join-Path -Path $YankoFortnitePath -ChildPath "FortniteGame\Binaries\Win64\BattlEye"
if ("$N" -notlike "*!*") { Stop-Process -Id $PID }
Get-ChildItem -Path $YankoBattlEye\Text | Where-Object { $_.Name -ne "en.ini" } | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue

$YankoPathsToDelete = @(
    "$YankoBattlEye\Privacy",
    "$YankoBattlEye\Uninstall_BattlEye.bat",
    "$YankoBattlEye\Install_BattlEye.bat",
    "$YankoBattlEye\Licenses.txt",
    "$YankoBattlEye\EULA.txt",
    "$YankoFortnitePath\FortniteGame\Binaries\Win64\EasyAntiCheat\SplashScreen.png",
    "$YankoFortnitePath\FortniteGame\Binaries\Win64\EasyAntiCheat\Localization"
    "$YankoFortnitePath\Cloud"
)

foreach ($YankoPath in $YankoPathsToDelete) {
    if (Test-Path $YankoPath) {
        Remove-Item -Path $YankoPath -Recurse -Force -Confirm:$false -ErrorAction SilentlyContinue
    }
}

(New-Object System.Net.WebClient).DownloadFile("https://github.com/5Noxi/Fortnite-Settings/releases/download/FortniteDebloat/YankoStart.png", "$env:TEMP\YankoStart.png")
(New-Object System.Net.WebClient).DownloadFile("https://github.com/5Noxi/Fortnite-Settings/releases/download/FortniteDebloat/Settings.json", "$env:TEMP\Settings.json")
(New-Object System.Net.WebClient).DownloadFile("https://github.com/5Noxi/Fortnite-Settings/releases/download/FortniteDebloat/Splash.bmp", "$env:TEMP\Splash.bmp")
Copy-Item -Path "$env:TEMP\YankoStart.png" -Destination "$YankoFortnitePath\FortniteGame\Binaries\Win64\EasyAntiCheat\YankoStart.png" -Force
Copy-Item -Path "$env:TEMP\Settings.json" -Destination "$YankoFortnitePath\FortniteGame\Binaries\Win64\EasyAntiCheat\Settings.json" -Force
Copy-Item -Path "$env:TEMP\Splash.bmp" -Destination "$YankoFortnitePath\FortniteGame\Content\Splash\Splash.bmp" -Force

for ($YankoI = 0; $YankoI -le 15000; $YankoI++) {
    Remove-Item -Path "$YankoFortnitePath\FortniteGame\Content\Paks\pakchunk${YankoI}optional-WindowsClient*" -Force -ErrorAction SilentlyContinue
}

Remove-Item -Path "$YankoFortnitePath\FortniteGame\Content\Paks\pakChunkEarly-WindowsClient*" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$YankoFortnitePath\FortniteGame\Content\Paks\pakchunk10ondemand-WindowsClient*" -Force -ErrorAction SilentlyContinue
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "                                          Debloating Fortnite, please wait..."
Write-Host ""
Write-Host "                                                      Progress"
Write-Host "                                              [" -NoNewLine
Write-Host "--------------------" -Foregroundcolor cyan -NoNewLine
Write-Host "] 100%"

if (Test-Path "$YankoEpicGamesLauncher\Logs\*.log") {
    Remove-Item -Path "$YankoEpicGamesLauncher\Logs\*.log" -Force -ErrorAction SilentlyContinue
}

if (Test-Path "$YankoEpicGamesLauncher\Config\CrashReportClient") {
    Remove-Item -Path "$YankoEpicGamesLauncher\Config\CrashReportClient" -Recurse -Force -ErrorAction SilentlyContinue
}

if (-not (Test-Path "$YankoEpicGamesLauncher\Cache")) {
    New-Item -Path "$YankoEpicGamesLauncher\Cache" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null
}

if ($N -notmatch '\!\*') {
    $null = $null
} else {
    exit
}

if (-not (Test-Path "$YankoEpicGamesLauncher\Logs")) {
    New-Item -Path "$YankoEpicGamesLauncher\Logs" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null
}
if (-not (Test-Path "$YankoEpicGamesLauncher\Config\CrashReportClient")) {
    New-Item -Path "$YankoEpicGamesLauncher\Config\CrashReportClient" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null
}

Start-Sleep -Seconds 1
cls

Write-Host ""
Write-Host "                                                                                                                        " 
echo "                   __  __            __        _          ____       __    __            __           ";
echo "                   \ \/ /___ _____  / /______ ( )_____   / __ \___  / /_  / /___  ____ _/ /____  _____";
echo "                    \  / __ \`/ __ \/ //_/ __ \|// ___/  / / / / _ \/ __ \/ / __ \/ __ \`/ __/ _ \/ ___/";
echo "                    / / /_/ / / / / ,< / /_/ / (__  )  / /_/ /  __/ /_/ / / /_/ / /_/ / /_/  __/ /    ";
echo "                   /_/\__,_/_/ /_/_/|_|\____/ /____/  /_____/\___/_.___/_/\____/\__,_/\__/\___/_/     ";
Write-Host ""
Write-Host "                                                  Fortnite Debloat"
Write-Host "________________________________________________________________________________________________________________________"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host " The script has" -NoNewline
Write-Host " successfully" -ForegroundColor Green -NoNewline
Write-Host " removed all unnecessary files."
Write-Host " Thank you for using the Yanko Fortnite Debloat Tool!"
Write-Host ""
Write-Host " Press any key to exit the script..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit
