#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23280940:6589bdc5badcee18ba4f1735f37a200eb18c3352; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:22517032:a5403c977474bf4f0f61901009f755a38118e49d EMMC:/dev/block/bootdevice/by-name/recovery 6589bdc5badcee18ba4f1735f37a200eb18c3352 23280940 a5403c977474bf4f0f61901009f755a38118e49d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
