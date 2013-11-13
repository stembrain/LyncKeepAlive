LyncKeepAlive
=============

If Lync is running and the account is not signed in, then this script signs the account in. Use this applescript in a cronjob or Automator/iCal arrangement to keep your account signed in to Microsoft Lync. 

The LyncKeepAlive.scpt file is an applescript that tells Lync to sign in if its running. Open it with the AppleScript Editor to run it.

The LyncKeepAlive.plist file can be loaded by launchctl to schedule the script to run. This way launchd calls the applescript which will check that your connection is alive every X seconds.
