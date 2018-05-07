


zpool status pool
zpool get health tank
zpool get health,free,allocated tank
zpool get all tank
zfs get used,available,compressratio tank/test


# zfs create -V 1G tank/swap
# mkswap /dev/zvol/tank/swap
# swapon /dev/zvol/tank/swap



zfs create -V 100G tank/ext4
fdisk /dev/tank/ext4

# mkfs.ext4 /dev/zd0p1
# mkfs.ext4 /dev/zd0p2
# mkdir /mnt/zd0p{1,2}
# mount /dev/zd0p1 /mnt/zd0p1
# mount /dev/zd0p2 /mnt/zd0p2

zfs set compression=lzjb pool/ext4
zfs snapshot tank/ext4@001

zfs create tank/log
# zfs set compression=lz4 tank/log
zfs get compressratio tank/test
zfs set dedup=on tank/test
zpool get dedupratio tank

zfs snapshot tank/test@tuesday
zfs set compression=lzjb tank/test@friday

zfs set snapdir=visible tank/test
zfs list -t snapshot
zfs list -r -t snapshot tank

zfs clone tank/test@tuesday tank/tuesday
dd if=/dev/zero of=/tank/tuesday/random.img bs=1M count=100
zfs list -r tank



zpool status
zpool status -v
zfs get all <pool>
zfs list
modprobe zfs

/etc/modprobe.d/zfs.conf

options scsi_mod scan=sync

/etc/fstab

/mnt/zfspool		/srv/nfs4/music		none	bind,defaults,nofail,x-systemd.requires=zfs-mount.service	0 0



systemctl enable zfs.target
systemctl start zfs.target

systemctl enable zfs-import-cache
# systemctl enable zfs-mount
# systemctl enable zfs-import.target


zfs set mountpoint=/foo/bar poolname

use ACL on a ZFS pool:

# zfs set acltype=posixacl <nameofzpool>/<nameofdataset>
# zfs set xattr=sa <nameofzpool>/<nameofdataset>


zfs set compression=on <pool>
zfs create -o compression=gzip tank/test/one

-o feature@sha512=disabled
-o primarycache=metadata
-o logbias=throughput

zfs set quota=20G <nameofzpool>/<nameofdataset>/<directory>

zfs set sync=disabled <pool>/tmp


zpool add <pool> log <device-id>
zpool add <pool> log mirror <device-id-1> <device-id-2>


zfs set setuid=off <pool>/tmp
zfs set devices=off <pool>/tmp


# zfs create -o setuid=off -o devices=off -o sync=disabled -o mountpoint=/tmp <pool>/tmp




systemctl mask tmp.mount


zfs create -o encryption=on -o keyformat=passphrase <nameofzpool>/<nameofdataset>

use a key instead of using a passphrase:

# dd if=/dev/urandom of=/path/to/key bs=1 count=32
# zfs create -o encryption=on -o keyformat=raw -o keylocation=file:///path/to/key <nameofzpool>/<nameofdataset>

manually load the keys and then mount the encrypted dataset:

# zfs load-key <nameofzpool>/<nameofdataset> # load key for a specific dataset
# zfs load-key -a # load all keys
# zfs load-key -r zpool/dataset # load all keys in a dataset


zpool import -l pool

automate this at boot with a custom systemd unit. For example:

/etc/systemd/system/zfs-key@.service

[Unit]
Description=Load storage encryption keys
DefaultDependencies=no
Before=systemd-user-sessions.service
Before=zfs-mount.service

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/bash -c 'systemd-ask-password "Encrypted storage password (%i): " | /usr/bin/zfs load-key zpool/%i'

[Install]
WantedBy=zfs-mount.service




to have an encrypted home: (the two passwords, encryption and login, must be the same)

# zfs create -o compression=off -o dedup=off -o mountpoint=/home/<username> <zpool>/<username>
# useradd -m <username>
# passwd <username>
# ecryptfs-migrate-home -u <username>
<log in user and complete the procedure with ecryptfs-unwrap-passphrase>









ZFS pools should be scrubbed at least once a week. To scrub the pool:

# zpool scrub <pool>

To do automatic scrubbing once a week, set the following line in the root crontab:

# crontab -e

...
30 19 * * 5 zpool scrub <pool>















