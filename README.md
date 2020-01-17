# my teslausb/tesla_dashcam config

This is how I setup a Pi Zero W to automatically share and process my Tesla dashcam and sentry videos. This process does the following:

- Automatically copies dashcam and sentry videos to a NAS on my home network as soon as my car returns home and connects to my local WIFI
- Runs a batch file nightly that processes the raw dashcam video files, combining the cameras, and editing out and video with no motion
- The videos are shared in a library on my local Plex server, which I can access from most any device
- Videos older than 60 days are deleted

The batch files, and config files I used to do this are in this repro. To use them, do the following:
- Setup a fileshare on your home network
- Get a PiZeroW and install the teslausb image, following the instructions here: https://github.com/marcone/teslausb
- My teslausb_vars is included, but it is easy to make your own. If you do use mine, make sure to replace the file path and security settings with your info. 
- download the tesla_dashccam project from here: https://github.com/ehendrix23/tesla_dashcam. Add the batch file (fixing the filepaths to your share) and options.txt file to that folder. Run the batch file to make sure it works for you (and change as needed)
- On Windows, run "Task Scheduler" and create a new task that runs every night (I run it at 3am) that executes that batch file.
- Win

This has worked well for me. I make no promises that it will work for you, and take no responsiblity for any problems it may cause. Do any/all of this at your own risk, but hopefully this info will help someone.

Good luck!
