#!/bin/bash
#Made to rsync config files from the .config folder to the scriptss folder.
rsync -rtv --progress --delete $HOME/.bashrc $HOME/scripts_git/i3_config_backup/_.bashrc
rsync -rtv --progress --delete $HOME/.bash_profile $HOME/scripts_git/i3_config_backup/_.bash_profile
rsync -rtv --progress --delete $HOME/.config/{i3,i3blocks,alacritty} $HOME/scripts_git/i3_config_backup/
rsync -rtv --progress --delete $HOME/.fonts $HOME/scripts_git/i3_config_backup/_.fonts
