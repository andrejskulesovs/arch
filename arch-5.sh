mkinitcpio -p linux

echo "Set root password"
passwd

# Install boot loader

grub-install --boot-directory=/boot --efi-directory=/boot/efi /dev/sda2

grub-mkconfig -o /boot/grub/grub.cfg

grub-mkconfig -o /boot/efi/EFI/arch/grub.cfg


echo "Exit and reboot. Then run arch-post.sh"
