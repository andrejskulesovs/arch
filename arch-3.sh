ln -sf /usr/share/zoneinfo/Europe/Riga /etc/localtime
hwclock  --systohc --utc

# Update locale
echo LANG=en_US.UTF-8 >> /etc/locale.conf
echo LANGUAGE=en_US >> /etc/locale.conf
echo LC_ALL=C >> /etc/locale.conf
echo 'Now run arch-4.sh'
