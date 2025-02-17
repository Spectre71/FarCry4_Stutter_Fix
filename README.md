# FarCry4 Stutter Fix
<p style="text-align:justify;">A fix for Far Cry 4 that removes game stuttering and hanging for long periods of time after Steam Achievements Implementation.</p>

## Detailed Description of the Applet
<p style="text-align:justify;">This applet was created after 3 months of looking for solutions on how to get my game woking stutter free again after Ubisoft had implemented Steam achievements retroactively (<em>11 years after launch</em>).</p>

<p style="text-align:justify;">The app runs the <strong>FarCry4.exe</strong> file from the install directory and <strong>locks the number of active cores to 4</strong> and <strong>sets the executables priority to "High"</strong> in Task Manager, so it always takes priority over any other task except system tasks, making it almost impossible to freeze due to being among the most important apps running while the executable is active.</p>

## How to Use This Software
<p style="text-align:justify;"><strong>Step 1:</strong> Download the file named <em>FC4Launcher_03_high.ps1</em>.</p><br>
<p style="text-align:justify;"><strong>Step 2:</strong> Run <em>PowerShell</em> with <em>Administrator privileges</em> (as Admin).</p><br>
<p style="text-align:justify;"><strong>Step 3:</strong> Run command <em>Install-Module -Name ps2exe -Force</em>.</p><br>
<p style="text-align:justify;"><strong>Step 4 (OPTIONAL IF PS2EXE IS NOT INSTALLED):</strong> When asked <em>Do you want PowerShellGet to install and import the NuGet
 provider now?</em> type <strong>Y</strong> and hit the keyboard key <em>Enter</em>.</p><br>
<p style="text-align:justify;"><strong>Step 5:</strong> Run command <em>Invoke-PS2EXE -inputFile "C:\Path\To\FC4Launcher_03_high.ps1" -outputFile "C:\Path\To\FarCry4_Launcher.exe" -noConsole -requireAdmin -title "FC4Launcher"</em>.</p><br>
<p style="text-align:justify;"><strong>Step 6:</strong> Run <em>FarCry4_Launcher.exe</em> and test for stability.</p><br>
<p style="text-align:justify;"><strong>Step 7 (OPTIONAL):</strong> Adjust code to your liking so it suits your requirements.</p>

## Conclusion
<p style="text-align:justify;">Hopefully this helps and serves someone out there, who was/is unable to play this game as I was for some dumb-ass reason, as it did me. The code is also written in a way to only affect the FC4.exe, so no other tasks are affected, and the system returns back to it's original state after the game closes.</p>
