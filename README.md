# 862-installers
These scripts are installing essential packages to be able to develop code for [FRC](https://www.firstinspires.org/robotics/frc)

# Dependencies
You will need to install\
[bash](https://www.gnu.org/software/bash/) (Linux, Macos, Windows, etc.)\
[PowerShell](https://github.com/PowerShell/PowerShell) (Windows only, version >= 5.0)

# How to install

if you already have git installed, open up a terminal window and type `git clone https://github.com/frc-862/862-installers.git`\
Then, navigate into the directory by typing `cd 862-installers/`
```bash
git clone https://github.com/frc-862/862-installers.git
cd 862-installers/
```

otherwise, you can click on the green clone button on the github page and click "Download ZIP"\
Then extract the files from the zip, and navigate into the 862-installers folder.

From here, follow the instructions for your specific type of operating system. If it's not there feel free to open a Jira Ticket.

## Windows 10 and 11
For Windows, use the `862Installer-windows.cmd` script.

```cmd
.\862Installer-windows.cmd
```

## Linux, Mac OS, etc.
For systems with bash, use the `862Installer-bash.sh` script.

```bash
./862Installer-bash.sh
```

# Info

Name | Repository/Link | Use
--- | --- | ---
Visual Studio Code | [link](https://code.visualstudio.com/) | An Editor to develop code efficiently.
git | [link](https://git-scm.com/) | the version control system that we use to manage all of our code.
openjdk11 | [link](https://openjdk.java.net/projects/jdk/11/) | The language we use to write our code.
WPILib (extension) | [link](https://wpilib.org/) | An extension for Visual Studio Code that makes working on wpilib projects easier.
brew (Mac, Linux) | [link](https://brew.sh/) | A package manager that makes installing software a lot easier.
scoop (Windows) | [link](https://scoop.sh/) | Another package manager that makes installing software a lot easier.

At the end of all the installations, the script clones the [lightning](https://github.com/frc-862/lightning) repository into `$HOME/Documents/lightning`

Finally, the script builds the lightning repository. If any errors occur feel free to make a jira ticket, and someone will help you out.

If no errors occur, you have installed all the necessary applications/packages to build FRC code

Notes:
You will need a GPR key to build code other than the lightning repository
You will also need an ssh key to contribute code

# GPR key instructions

A GPR key is required to build any code besides the lightning repository.

## GitHub side
To begin, open settings after clicking on your profile picture.

![gpr1.png](https://github.com/frc-862/862-installers/raw/main/assets/gpr1.png)

Then, click on "Developer settings", near the end of the page.

![gpr2.png](https://github.com/frc-862/862-installers/raw/main/assets/gpr2.png)

Afterward, click on "Personal access tokens"

![gpr3.png](https://github.com/frc-862/862-installers/raw/main/assets/gpr3.png)

Next, click on "Generate new token" to create a token

![gpr4.png](https://github.com/frc-862/862-installers/raw/main/assets/gpr4.png)

Name your token something memorable, or at least be able to identify the key. For the Expiration, you can set it to expire never, but as advised by GitHub, I would set it to 30-90 days and follow these instructions again when it expires. However, it is usually fine to set it to not expire. Finally, make sure to check the `write:packages` and `delete:packages` scopes. (The repo scope will automagically be checked)

![gpr5.png](https://github.com/frc-862/862-installers/raw/main/assets/gpr5.png)

After clicking on "Generate token" at the end of the page, you will get prompted to copy the key for the token. Make sure the copy this and save it for the next steps.

## Local side

Assuming you ran one of the install scripts, you should have a `.gradle/` folder in your home directory, (~ for both Linux and Powershell). Navigate into the folder and open the file `gradle.properties` in your favorite text editor. (it's ok if it's not there, just create a new file with the same name).  

Then, add these two lines into `gradle.properties`
```bash
gpr.user=username
gpr.key=the key from earlier
```
Save the file and you should be able to build other repositories now. As always, feel free to make a jira ticket if you have any issues.

# SSH Key Instructions

An SSH Key is required to contribute code.

Instructions to create an SSH key are located at the [GitHub Docs](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/about-ssh).  

Note: Make sure to clone repositories through SSH instead of HTTPS.

# Driver Station (Windows Only)

There's a video on installing the Driver Station and other relevant tools [here](https://drive.google.com/file/d/161bp7iFEciRYEJMP1MONmpF_pKdheI-W/view).

The link to the NI Tools install can be found [here](https://www.ni.com/en-us/support/downloads/drivers/download.frc-game-tools.html#369633).
