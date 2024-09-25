
echo "Backup Dropbox/janmejoy_computer to backup_Dropbox/janmejoy_computer"
echo "Press 1 for Dry Run. Press 2 for Full Run: "

read VAR

if [[ $VAR -eq 1 ]]
then
  echo "Performing Dry Run"
  rsync -r -n -t -v --progress --delete -s /mnt/janmejoy/data/Dropbox/janmejoy_computer/ /mnt/janmejoy/backup/backup_essentials/

elif [[ $VAR -eq 2 ]]
then
  echo "Performing full run. Maintaining log."
  rsync -r -t -v --progress --delete -s /mnt/janmejoy/data/Dropbox/janmejoy_computer/ /mnt/janmejoy/backup/backup_essentials/
  echo "$(date)" >>/mnt/janmejoy/backup/essentials_backup_log.txt
fi

