
echo "Backup essentials to backup_essentials"
echo "Press 1 for Dry Run. Press 2 for Full Run: "

read VAR

if [[ $VAR -eq 1 ]]
then
  echo "Performing Dry Run"
  rsync -r -n -t -v --progress --delete -s /run/media/janmejoy/data/essentials/ /run/media/janmejoy/backup/backup_essentials

elif [[ $VAR -eq 2 ]]
then
  echo "Performing full run. Maintaining log."
  rsync -r -t -v --progress --delete -s /run/media/janmejoy/data/essentials/ /run/media/janmejoy/backup/backup_essentials
  echo "$(date)" >>/run/media/janmejoy/backup/essentials_backup_log.txt
fi

