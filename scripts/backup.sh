echo " \nBooks:\n " &&
rsync --delete --verbose --recursive --update --info=progress2 /mnt/hdd/Documents/ /mnt/backup/Documents/ &&
echo " \nDesktop:\n " &&
rsync --delete --recursive --update --info=progress2 /home/baka/Desktop /mnt/backup/sync &&
echo " \nPictures:\n " &&
rsync --delete --recursive --update --info=progress2 /home/baka/Pictures /mnt/backup/sync
echo " \nMusic:\n " &&
rsync --delete --recursive --update --info=progress2 /home/baka/Music /mnt/backup/sync
echo " \nSelf:\n " &&
rsync --delete --recursive --update --info=progress2 /home/baka/Self\ Study /mnt/backup
