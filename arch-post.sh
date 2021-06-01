# enable Network manager

systemctl enable --now NetworkManager

# Install Intel microcode

pacman -S intel-ucode
grub-mkconfig -o /boot/grub/grub.cfg


# Add user
useradd -m -g users -G wheel z
passwd z

echo "Running visudo uncomment line starting with # %wheel ... "
echo "Aftir this step base install is finished"
visudo
