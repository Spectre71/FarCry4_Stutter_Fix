# FarCry4 Stutter Fix
A fix for Far Cry 4 that removes game stuttering and hanging for long periods of time after Steam Achievements Implementation.

## Detailed Description of the Applet
This applet was created after 3 months of looking for solutions on how to get my game woking stutter free again after Ubisoft had implemented Steam achievements retroactively (*11 years after launch*).

The app runs the **FarCry4.exe** file from the install directory and **locks the number of active cores to 4** and **sets the executables priority to "High"** in Task Manager, so it always takes priority over any other task except system tasks, making it almost impossible to freeze due to being among the most important apps running while the executable is active.

## How to Use This Software
**Step 1:** Download the file named *FC4Launcher_03_high.ps1*.<br><br>
**Step 2:** Run *PowerShell* with *Administrator privileges* (as Admin).<br><br>
**Step 3:** Run command *Install-Module -Name ps2exe -Force*.<br><br>
**Step 4 (OPTIONAL IF PS2EXE IS NOT INSTALLED):** When asked *Do you want PowerShellGet to install and import the NuGet
 provider now?* type **Y** and hit the keyboard key *Enter*.<br><br>
**Step 5:** Run command *Invoke-PS2EXE -inputFile "C:\Path\To\FC4Launcher_03_high.ps1" -outputFile "C:\Path\To\FarCry4_Launcher.exe" -noConsole -requireAdmin -title "FC4Launcher"*.<br><br>
**Step 6:** Run *FC4Launcher.exe* and test for stability.<br><br>
**Step 7 (OPTIONAL):** Adjust code to your liking so it suits your requirements.

## Conclusion
Hopefully this helps and serves someone out there, who was/is unable to play this game as I was for some dumb-ass reason, as it did me. The code is also written in a way to only affect the FC4.exe, so no other tasks are affected, and the system returns back to it's original state after the game closes.
