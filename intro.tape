# intro.tape - Charm VHS script for GitHub profile header animation
Output "assets/intro.gif"

Set Shell "bash"
Set FontSize 15
Set Width 960
Set Height 520
Set Padding 20
Set Theme "Catppuccin Mocha"
Set WindowBar Colorful

Hide
Type "source ./setup_env.sh && clear"
Enter
Show
Sleep 600ms

Type "whoami --spec"
Sleep 350ms
Enter
Sleep 1200ms

Type "node status: ariya-sarrafzadeh.ir [NOMINAL]"
Sleep 350ms
Enter
Sleep 800ms

Type "sys --query role"
Sleep 350ms
Enter
Sleep 800ms

Type "ariya-cli --diagnose --subsystem=all"
Sleep 350ms
Enter
Sleep 2500ms
