
echo "Press 1 for Dry Run. Press 2 for Full Run: "

read VAR

if [[ $VAR -eq 1 ]]
then
  echo "Performing Dry Run"
  rsync -r -n -t -v --progress --delete -s /mnt/janmejoy/data/Dropbox/Janmejoy_SUIT_Dropbox/ /mnt/janmejoy/data/Dropbox/janmejoy_computer/projects/solar_physics/SUIT

elif [[ $VAR -eq 2 ]]
then
  echo "Performing full run. Maintaining log."
  rsync -r -t -v --progress --delete -s /mnt/janmejoy/data/Dropbox/Janmejoy_SUIT_Dropbox/ /mnt/janmejoy/data/Dropbox/janmejoy_computer/projects/solar_physics/SUIT
  echo "$(date)" >> /run/media/janmejoy/data/Dropbox/janmejoy_computer/projects/solar_physics/SUIT_backup_log.txt
fi

