#!/bin/bash
has() { type -p "$1" &> /dev/null; }

if has sudo ; then
    printf "Using sudo for root priveleges"
else
    printf "sudo not found, if you're using doas or other ill just trust that you know what you're doing."
    exit
fi

if has apt ; then
    printf "existing apt installation detected. Updating now."
    sudo apt update
    sudo apt upgrade
else
    printf "Apt not found in PATH. Please use the apporopriate installed for your distro or fix your PATH"
    exit
fi

sudo apt install git openjdk-11-jdk wget

wget -O vscode.deb "https://az764295.vo.msecnd.net/stable/3866c3553be8b268c8a7f8c0482c0c0177aa8bfa/code_1.59.1-1629375198_amd64.deb"
sudo apt install vscode.deb
rm vscode.deb

if has code ; then
    printf "installing vscode extensions..."
    code --install-extension vscjava.vscode-java-pack
    code --install-extension wpilibsuite.vscode-wpilib
else
    printf "ERROR: vscode not detected in PATH."
    printf "It may have failed to install or failed to add itself to your PATH"
    printf "You may be able to fix thie by manually install vscode or manually adding /usr/bin/code to your PATH"
fi

printf "Cloning lightning source code over https into $HOME/Documents/"
printf "Note: you will need to clone over ssh in order to contribute code"
if [ -d "$HOME/Documents/lightning" ] ; then
    printf "lightning already appears to be cloned. Pulling latest version now."
    git -C "$HOME/Documents/lightning" pull
else
    printf "lightning doesn't appear to be cloned. Cloning now."
    git clone "https://github.com/frc-862/lightning.git" "$HOME/Documents/lightning"
fi

printf "Building gradle..."
"$HOME/Documents/lightning/gradlew" -p "$HOME/Documents/lightning" build

