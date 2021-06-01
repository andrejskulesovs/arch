# Encrypt root partition

echo 'Let’s encrypt /dev/sda3. Use the following command, confirm with uppercase ‘YES’ and type your desired password:'

cryptsetup luksFormat -v -s 512 -h sha512 /dev/sda3

echo 'Now open the encrypted partition to allow access to it. The command will prompt for the password, and the partition will be available though ‘/dev/mapper/luks_root’:'

cryptsetup open /dev/sda3 luks_root

# Format and mount file system


mkfs.vfat -n “EFI” /dev/sda1

mkfs.ext4 -L boot /dev/sda2

mkfs.ext4 -L root /dev/mapper/luks_root


mount /dev/mapper/luks_root /mnt

mkdir /mnt/boot

mount /dev/sda2 /mnt/boot

mkdir /mnt/boot/efi

mount /dev/sda1 /mnt/boot/efi


cd /mnt

dd if=/dev/zero of=swap bs=1M count=1024

mkswap swap

swapon swap

chmod 0600 swap

# Install packages

pacstrap -i /mnt base base-devel efibootmgr grub linux linux-firmare networkmanager sudo vi vim bash-completion nano

# Configure

genfstab -U /mnt >> /mnt/etc/fstab

echo 'Change root to new system then run arch-3.sh'
arch-chroot /mnt

