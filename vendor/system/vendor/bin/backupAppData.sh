#!/system/bin/sh

# Local variable
SrcPath=/data/data
CfgPath="/sdcard/.backupAppData.cfg"
DstPathFile="/sdcard/.appDataPath.cfg"
ProgressFlagFile="/sdcard/.progressFlagFile"
DstPath=`cat $DstPathFile`
BusyBoxPath="/system/bin/busybox"
TarTool="$BusyBoxPath tar"

# Environment Setting
export PATH=/sbin:/system/sbin:/system/bin:/system/xbin:$PATH

# Start backup app data
touch $ProgressFlagFile
mkdir -p $DstPath
while read line
do
    #[BUGFIX]-ADD-BEGIN by TSNJ,Cason.Xu,11/7/2014,PR-715707
    #cd "$SrcPath"
    #$TarTool -zcpf "$DstPath/$line.tar.gz" "$line"
    #cd -
    echo $line".tar"
    $TarTool -cf $DstPath/$line".tar" "/data/data/$line"
    #[BUGDIX]-ADD-END by TSNJ,Cason.Xu
done < "$CfgPath"

rm "$CfgPath"
rm "$DstPathFile"
rm $ProgressFlagFile
