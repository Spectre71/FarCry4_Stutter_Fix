# Check if running as admin; if not, relaunch as admin
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell.exe -ArgumentList "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

try {
    # Bypass execution policy for this session
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

    # Launch Far Cry 4
    $Process = Start-Process -FilePath "Q:\STEAM\steamapps\common\Far Cry 4\bin\FarCry4.exe" -PassThru -NoNewWindow -ErrorAction Stop

    # Wait for the game to initialize (adjust sleep time if needed)
    Start-Sleep -Seconds 30

    # Fetch the ACTIVE process (in case the original $Process spawned a child)
    $GameProcess = Get-Process -Name "FarCry4" -ErrorAction Stop

    if (-not $GameProcess.HasExited) {
        $GameProcess.ProcessorAffinity = 0xF  # Cores 0-3
        $GameProcess.PriorityClass = 'High'
        Write-Host "[SUCCESS] Affinity and priority set!"
    } else {
        Write-Host "[ERROR] Process exited before settings could be applied!"
    }
} catch {
    Write-Host "[FATAL ERROR] $_"
}