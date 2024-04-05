#! /bin/bash

#Making sure that universe repo is installed
sudo add-apt-repository universe && apt update && apt upgrade -y
sudo apt install expect -y

#Install FiraCode Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode -d $HOME/.local/share/fonts
fc-cache -f

#Install Starship (confirmation will be prompted)
sudo curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' | tee -a $HOME/.bashrc
source $HOME/.bashrc
