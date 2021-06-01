ln -sf /usr/share/zoneinfo/Europe/Riga /etc/localtime 
hwclock  --systohc --utc
echo 'Now edit /etc/locale.gen and remove the comment (‘#’) on en_US.UTF-8 and ru lv. Then run arch-4.sh'
