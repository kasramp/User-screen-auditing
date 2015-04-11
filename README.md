# User-screen-auditing
##Description
User-screen-auditing is a sample bash script that captures users desktop activities by taking picture. The script utilizes simple timer and import program to capture screenshot from user's desktop.
Additionally, you can set saving picture path to your [Dropbox] (http://www.dropbox.com) syncing folder path to be able do monitoring via different devices which connected to the same Dropbox account.
This feature allows you to control the activity of the user that currently is using the system specially kids control.
##Dependency
The script uses [Import](http://www.imagemagick.org/script/import.php) to capture pictures from webcam and it should be installed on the system.

In Ubuntu you can install Import from Imagemagick package with the following command.

    $ sudo apt-get install imagemagick
  
##How to use
In order to use the script just provide excuting permission and run it like below,

    $ chmod a+x auditUser.sh
    $ ./auditUser.sh
Following is the list of acceptable arguments with their description,

    -s : denotes to period of time (in seconds) that screen capturing occurs [Default value = 10 {seconds}]. You should keep in mind to not set the timer too low.

    -p : used to set the path that pictures would be saving [Default value = current path]. It is highly recommended to users to set this path to point to Dropbox syncing folder to be able to check pictures in any devices with Dropbox installed.
##Contact
* kasra@madadipouya.com  
* kasra_mp@live.com  

