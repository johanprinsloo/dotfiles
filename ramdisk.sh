hdid -nomount ram://512768
newfs_hfs /dev/disk1
mkdir /tmp/ramdisk1
mount -t hfs /dev/disk1 /tmp/ramdisk1

//umount /tmp/ramdisk1
//hdiutil detach /dev/disk1