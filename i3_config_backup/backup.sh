#!/bin/bash
#Made to rsync config files from the .config folder to the scriptss folder.
rsync -rntv --progress --delete $HOME/.bashrc $HOME/scripts/i3_config_backup/bashrc
rsync -rntv --progress --delete $HOME/.config/{i3,i3blocks,alacritty} $HOME/scripts/i3_config_backup/
