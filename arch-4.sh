locale-gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf

echo "zDesktop" > /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.1.1 zDesktop.localdomain zDesktop"

echo "Edit grub configuration file for LUKS support."
echo "GRUB_CMDLINE_LINUX='cryptdevice=/dev/sda3:luks_root'"
echo "vim /etc/default/grub"


echo "Then edit /etc/mkinitcpio.conf"
echo "Edit HOOK line insert 'encrypt' before 'filesystems'"

echo "then run arch-5.sh"
