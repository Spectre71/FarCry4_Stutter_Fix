# FarCry4 Stutter Fix
A fix for Far Cry 4 that removes game stuttering and hanging for long periods of time after Steam Achievements Implementation.

## Detailed Description of the Applet
This applet was created after a month of looking for solutions on how to get my game woking stutter free again after Ubisoft had implemented Steam achievements retroactively (<em>11 years after launch</em>).

The app runs the <strong>FarCry4.exe</strong> file from the install directory, <strong>locks the number of active cores to 4</strong>, and <strong>sets the executables priority to "High"</strong> in Task Manager, so it always takes priority over any other task except system tasks, making it almost impossible to freeze due to being among the most important apps running while the executable is active.

## How to Use This Software
<strong>1.</strong> Download the file named `FC4Launcher_03_high.ps1`.<br><br>
<strong>2.</strong> Open `FC4Launcher_03_high.ps1` with notepad and specify <strong>YOUR</strong> path to the FC4 executable (review code to understand this step).<br><br>
<strong>3.</strong> Run `PowerShell` with <strong>Administrator</strong> privileges (as Admin).<br><br>
<strong>4.</strong> Run command `Install-Module -Name ps2exe -Force`.<br><br>
<strong>5.</strong> (OPTIONAL IF PS2EXE IS NOT INSTALLED) When asked: <em><trong>Do you want PowerShellGet to install and import the NuGet
 provider now?</strong></em> type `Y` and hit the keyboard key <strong>Enter</strong>.<br><br>
 <strong>5.1</strong> (OPTIONAL IF RUNNING SCRIPTS IS CURRENTLY DISABLED ON YOUR MACHINE) As per <strong><em>bigbirdthethird</em></strong>'s note, scripts may be disabled on some machines by default, so it's paramount to enable ps script execution as follows:
 ```ps
Get-ExecutionPolicy -List
 ```
to see what policy you currently employ, and
```ps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
to set policy to something different than undefined or restricted. Other options are `-Unrestricted` `-Restricted` or `-AllSigned`.<br><br>
<strong>6.</strong> Run command `Invoke-PS2EXE -inputFile "C:\Path\To\FC4Launcher_03_high.ps1" -outputFile "C:\Path\To\FarCry4_Launcher.exe" -noConsole -requireAdmin -title "FC4Launcher"`.<br><br>
<strong>7.</strong> Run `FarCry4_Launcher.exe` and test for stability.<br><br>
<strong>8.</strong> (OPTIONAL) Adjust code to your liking so it suits your requirements.

## Conclusion
Hopefully this helps and serves someone out there, who was/is unable to play this game as I was for some dumb-ass reason, as it did me. The code is also written in a way to only affect the FC4.exe, so no other tasks are affected, and the system returns back to it's original state after the game closes.

## Notes
<strong>GENERAL:</strong><br><br>
<strong>1.</strong> In the code, there are place-holders such as `C:\Path\To`, which are meant to be replaced by your actual paths to executable files, so don't forget about that.<br><br>
<strong>2.</strong> Another placeholder is `Q:\STEAM\steamapps\common\Far Cry 4\bin\FarCry4.exe`. Make sure to adjust to your path.<br><br>
<strong>KNOWN ISSUES:</strong><br><br>
<strong>1.</strong> As of 27. 2. 2025 (credit goes to <em><strong>AlexLyaver</strong></em>), this launcher does <strong>NOT</strong> prevent the game from crashing while trying to join a CO-OP session (as Hurk).<br><br>
<strong>2.</strong> As of the latest testing (8. 9. 2025 -- credit goes to <em><strong>bigbirdthethird</strong></em>), powershell script execution may be disabled by default on windows, so make sure to enable it as per step <strong>5.1</strong>.
