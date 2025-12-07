<#
.SYNOPSIS
    Installs the Nocturne Nexus Windows Terminal color scheme.

.DESCRIPTION
    - Locates the Windows Terminal settings.json for the current user.
    - Backs up the existing configuration.
    - Imports the Nocturne Nexus scheme JSON from the script directory.
    - Merges or replaces any existing scheme with the same name.
    - Sets profiles.defaults.colorScheme to "Nocturne Nexus".

.PARAMETER SchemeFile
    The file name of the scheme JSON, relative to the script directory.

.PARAMETER SettingsPath
    Optional explicit path to settings.json. If not provided, common default
    locations are tried.

.NOTES
    Version: 1.0
    File: install-NocturneTerminal.ps1
#>

[CmdletBinding()]
param(
    [string]$SchemeFile = "Nocturne-WindowsTerminal-scheme-v1.0.json",

    # Optional explicit path to settings.json. If omitted, the script tries
    # standard Windows Terminal locations for the current user.
    [string]$SettingsPath
)

function Write-Info {
    param([string]$Message)
    Write-Host "[INFO]  $Message" -ForegroundColor Cyan
}

function Write-Err {
    param([string]$Message)
    Write-Host "[ERROR] $Message" -ForegroundColor Red
}

function Write-DebugMsg {
    param([string]$Message)
    Write-Host "[DEBUG] $Message" -ForegroundColor DarkGray
}

$ErrorActionPreference = "Stop"

try {
    # 1. Resolve the settings.json path
    if (-not $SettingsPath) {
        $defaultPackagedPath = Join-Path $env:LOCALAPPDATA "Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
        $defaultUnpackagedPath = Join-Path $env:LOCALAPPDATA "Microsoft\Windows Terminal\settings.json"

        if (Test-Path $defaultPackagedPath) {
            $SettingsPath = $defaultPackagedPath
        } elseif (Test-Path $defaultUnpackagedPath) {
            $SettingsPath = $defaultUnpackagedPath
        } else {
            Write-Err "Could not locate settings.json automatically. Use -SettingsPath to specify the full path."
            exit 1
        }
    }

    if (-not (Test-Path $SettingsPath)) {
        Write-Err "settings.json not found at '$SettingsPath'." 
        exit 1
    }

    Write-Info "Using settings file: $SettingsPath"

    # 2. Create a backup of settings.json
    $backupPath = "$SettingsPath.bak"
    try {
        Copy-Item -Path $SettingsPath -Destination $backupPath -Force
        Write-Info "Backup created at: $backupPath"
    } catch {
        Write-Err "Failed to create backup of settings.json: $($_.Exception.Message)"
        exit 1
    }

    # 3. Load and parse settings.json
    $rawSettings = Get-Content -Path $SettingsPath -Raw
    try {
        $settings = $rawSettings | ConvertFrom-Json
    } catch {
        Write-Err "Failed to parse settings.json. Restore from backup and fix JSON. Error: $($_.Exception.Message)"
        exit 1
    }

    if (-not $settings) {
        Write-Err "settings.json parsed to a null/empty object. Aborting."
        exit 1
    }

    # 4. Load and parse the scheme file from the script directory
    $schemePath = Join-Path $PSScriptRoot $SchemeFile
    if (-not (Test-Path $schemePath)) {
        Write-Err "Scheme file not found: $schemePath"
        exit 1
    }

    Write-Info "Using scheme file: $schemePath"

    $rawScheme = Get-Content -Path $schemePath -Raw
    try {
        $scheme = $rawScheme | ConvertFrom-Json
    } catch {
        Write-Err "Failed to parse scheme JSON in '$schemePath': $($_.Exception.Message)"
        exit 1
    }

    if (-not $scheme.name) {
        Write-Err "Scheme JSON does not contain a 'name' property. Cannot continue."
        exit 1
    }

    Write-Info "Scheme name: $($scheme.name)"

    # 5. Ensure 'schemes' array exists and is properly typed
    if (-not $settings.schemes) {
        Write-Info "'schemes' section not found in settings.json; creating a new array."
        $settings | Add-Member -MemberType NoteProperty -Name schemes -Value @()
    }

    # If schemes is not an array, normalize it into one
    if ($settings.schemes -isnot [System.Collections.IEnumerable] -or $settings.schemes -is [string]) {
        Write-DebugMsg "Normalizing 'schemes' into an array."
        $settings.schemes = @($settings.schemes)
    }

    # 6. Remove any existing scheme with the same name
    $existingCount = 0
    if ($settings.schemes.Count -gt 0) {
        $settings.schemes = @(
            $settings.schemes | Where-Object {
                if ($_ -and $_.name -eq $scheme.name) {
                    $script:existingCount++
                    $false
                } else {
                    $true
                }
            }
        )
    }

    if ($existingCount -gt 0) {
        Write-Info "Removed $existingCount existing scheme(s) named '$($scheme.name)'."
    }

    # 7. Add the new scheme
    $settings.schemes += $scheme
    Write-Info "Added scheme '$($scheme.name)'."

    # 8. Ensure profiles and defaults exist, then set colorScheme
    if (-not $settings.profiles) {
        Write-Info "'profiles' section not found; creating a new one with defaults and list."
        $profilesObj = [pscustomobject]@{
            defaults = [pscustomobject]@{}
            list     = @()
        }
        $settings | Add-Member -MemberType NoteProperty -Name profiles -Value $profilesObj
    }

    if (-not $settings.profiles.defaults) {
        Write-Info "'profiles.defaults' not found; creating it."
        $settings.profiles | Add-Member -MemberType NoteProperty -Name defaults -Value ([pscustomobject]@{})
    }

    $settings.profiles.defaults | Add-Member -Force -MemberType NoteProperty -Name colorScheme -Value $scheme.name
    Write-Info "Set profiles.defaults.colorScheme to '$($scheme.name)'."

    # 9. Write updated settings back to disk
    try {
        $jsonOut = $settings | ConvertTo-Json -Depth 15
        $jsonOut | Set-Content -Path $SettingsPath -Encoding UTF8
        Write-Info "settings.json updated successfully."
        Write-Info "If Windows Terminal is open, close and reopen it to apply the Nocturne Nexus scheme."
    } catch {
        Write-Err "Failed to write updated settings.json: $($_.Exception.Message)"
        Write-Info "Your backup is located at: $backupPath"
        exit 1
    }

    exit 0

} catch {
    Write-Err "Unexpected error: $($_.Exception.Message)"
    if ($backupPath) {
        Write-Info "settings.json backup is located at: $backupPath"
    }
    exit 1
}
