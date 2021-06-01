# Update system clock
timedatectl set-ntp true

# Prepare for LUKS encryption

modprobe dm-crypt
modprobe dm-mod

# 6. Prepare disks

echo "You need to partion disk see this script comments for instruction"

# Create partitions
# run:
# cfdisk /dev/sda
# Now let’s create our partitions, a first one with 256MB, a second one with 512MB and a third to get the remaining space:
#
#    Go to ‘new’ and press enter, in partition size write ‘256MB’ and press enter.
#    Go to ‘type’ and choose ‘EFI System’
#
# Partition type
#
#    Choose ‘Free space’, go to ‘new’ and press enter, in partition size write ‘512MB’ and press enter.
#    Choose ‘Free space’ and go to ‘new’ and press enter, leave space and press enter.
#    Go to ‘write’ and confirm when asked. Go to ‘quit’ and leave.
#
# You should now have three partitions:
#
#    /dev/sda1 — efi
#    /dev/sda2 — ext4 boot
#    /dev/sda3 — ext4 root
# 
