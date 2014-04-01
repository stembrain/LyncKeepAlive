LyncKeepAlive
=============

If Lync is running and the account is not signed in, then this script signs the account in. Use this applescript in a cronjob or Automator/iCal arrangement to keep your account signed in to Microsoft Lync. 

The LyncKeepAlive.scpt file is an applescript that tells Lync to sign in if its running. Open it with the AppleScript Editor to run it.

The LyncKeepAlive.plist file can be loaded by launchctl to schedule the script to run. This way launchd calls the applescript which will check that your connection is alive every X seconds.
To use the plist file:
- Put it in your home directory under Library/LaunchAgents
- Update the USERNAME value below to match your current user name
- Use "launchctl load ~/Library/LaunchAgents/LyncKeepAlive.plist to schedule the script to run


The OS may issue a warning that "osascript" would like to access your applications. This project uses osascript to execute the applescript that tells Lync to sign in. To allow osascript to interact with your applications in OSX Mavericks:
- Open System Preferences
- Open Security & Privacy
- Click the lock in lower left corner to unlock (may already be unlocked)
- Click Privacy tab
- Select Accessibility 
- Check the box next to osascript under the "Allow the apps below to control your computer"
