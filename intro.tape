# intro.tape - Charm VHS script for GitHub profile header animation
Output "assets/intro.gif"

Set Shell "bash"
Set FontSize 16
Set Width 950
Set Height 480
Set Padding 20
Set Theme "Catppuccin Mocha"
Set WindowBar Colorful

Hide
Type "source ./setup_env.sh && clear"
Enter
Show
Sleep 600ms

Type "whoami --spec"
Sleep 400ms
Enter
Sleep 800ms

Type "node status: ariya-sarrafzadeh.ir [NOMINAL]"
Sleep 300ms
Enter
Sleep 800ms

Type "sys --query role"
Sleep 400ms
Enter
Sleep 800ms

Type "ariya-cli --diagnose --subsystem=all"
Sleep 400ms
Enter
Sleep 2s
