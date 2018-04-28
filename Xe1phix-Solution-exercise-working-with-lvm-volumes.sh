




sudo fdisk /dev/xvdj 

Command (m for help): n

Command action
   e   extended
   p   primary partition (1-4) p

Partition number (1-4): 1

First cylinder (1-130, default 1): 1

Last cylinder, +cylinders or +size{K,M,G} (1-130, default 130): +500M   


Command (m for help): n

Command action
   e   extended
   p   primary partition (1-4) p

Partition number (1-4): 2

First cylinder (66-130, default 66): 66

Last cylinder, +cylinders or +size{K,M,G} (66-130, default 130): +500M


    Device Boot      Start         End      Blocks   Id  System
/dev/xvdj1               1          65      522081   83  Linux
/dev/xvdj2              66         130      522112+  83  Linux

Command (m for help): w
The partition table has been altered!


pvcreate /dev/xvdj1
  Physical volume "/dev/sdj1" successfully created
[root@ip-172-31-22-174 ~]# pvcreate /dev/xvdj2


vgcreate VG0 /dev/xvdj1 /dev/xvdj2


lvcreate -n myvol1 -L 300M VG0


mkfs -t ext4 /dev/mapper/VG0-myvol1


mkdir /mnt/logvol1
mount -t ext4 /dev/mapper/VG0-myvol1 /mnt/logvol1
cd /mnt/logvol1
mkdir backup
cd backup
cp -rf /etc/* .
ls -al







Extend the logical volume from our previous exercise to the full 1 GB of our volume group.
lvextend -L +716M /dev/mapper/VG0-myvol1 


Execute the appropriate filesystem command to implement the change to the logical volume in order to be reflected in the live filesystem.
resize2fs /dev/mapper/VG0-myvol1 















