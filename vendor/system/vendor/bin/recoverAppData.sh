#!/system/bin/sh

# Local variable
DstPath=/data/data
SrcPathFile="/sdcard/.appDataPath.cfg"
SrcPath=`cat $SrcPathFile`
CfgPath="/sdcard/.restoreAppData.cfg"
ProgressFlagFile="/sdcard/.progressFlagFile"
BusyBoxPath="/system/bin/busybox"
TarTool="$BusyBoxPath tar"

# Environment Setting
export PATH=/sbin:/system/sbin:/system/bin:/system/xbin:$PATH

# Start restore app data
touch $ProgressFlagFile

# Function Definition
strOwner=""
strGroup=""
getMode()
{
    strOwner=""
    strGroup=""
    local file=$1
    ls -dl $file | while read line
    do
        strOwner="${line#* }"
        strGroup="${strOwner#* }"
        index=0
        for item in $strOwner
        do
            if [ "$index" -eq "0" ]
            then
                index=1
                strOwner=$item
            else
                strGroup=$item
                break
            fi
        done
        echo "strOwner=$strOwner" > $file.opt
        echo "strGroup=$strGroup" >> $file.opt
    done
    source $file.opt
    rm $file.opt
}

checkfile()
{
    local file=$1
    local co=$2
    local cg=$3
    local do=$4
    local dg=$5
#[BUGFIX]-ADD-BEGIN by TCTNB.wen.zhuang,06/16/2014,PR-701046
    sy="system"
#[BUGDIX]-ADD-END by TCTNB.wen.zhuang
    getMode $file
    local toOwner=$strOwner
    local toGroup=$strGroup
    [[ "$strOwner" == "$co" ]] && toOwner="$do"
    [[ "$strGroup" == "$cg" ]] && toGroup="$dg"
    chown $toOwner:$toGroup $file
#[BUGFIX]-MOD-BEGIN by TCTNB.wen.zhuang,06/16/2014,PR-701046
    if [ "install" == $toOwner ]
    then
        chown $sy:$sy $file
    fi
#[BUGDIX]-ADD-END by TCTNB.wen.zhuang
    if [ -d "$file" ]
    then
        for f in $file/*
        do
            checkfile $f $co $cg $do $dg
        done
    fi
}

adjustMode()
{
    local src="$1"
    local dst="$2"
    getMode $src
    local curOwner="$strOwner"
    local curGroup="$strGroup"
    getMode $dst
    local dstOwner="$strOwner"
    local dstGroup="$strGroup"
    [[ "$dstOwner" == "" ]] && dstOwner=$curOwner
    [[ "$dstGroup" == "" ]] && dstGroup=$curGroup
    echo "s=$src d=$dst so=$curOwner sg=$curGroup do=$dstOwner dg=$dstGroup"
    checkfile $src $curOwner $curGroup $dstOwner $dstGroup
}

#[BUGFIX]-ADD-BEGIN by TSNJ,Cason.Xu,11/7/2014,PR-715707
mkdir -p "$DstPath.recovery"
while read line
do
    echo $line
    echo $line".tar"
    uid=`ls -l /data/data/|busybox grep $line$|busybox awk '''{i=index($2,"_a");print 10000+substr($2,i+2);}'`
    echo "$uid"
    if [ "$uid"x != x ]
	then
		$BusyBoxPath tar -xf $SrcPath/$line".tar" -C "$DstPath.recovery"
		$BusyBoxPath cp -R $DstPath.recovery/data/data/$line/ /data/data/
		$BusyBoxPath rm -rf "$DstPath.recovery"
		$BusyBoxPath chmod 777 /data/data/$line -R
		$BusyBoxPath chown $uid:$uid /data/data/$line/. -R
		$BusyBoxPath chown 1000:1000 /data/data/$line/lib

		echo "install end"
	else
		echo "uid == null"
        fi
done < "$CfgPath"

echo "Restore app file"
rm "$CfgPath"
rm "$SrcPathFile"
rm $ProgressFlagFile
#[BUGDIX]-ADD-END by TSNJ,Cason.Xu

:<<!
mkdir -p "$DstPath.recovery"
while read line
do
    local count=1
    while true
    do
        count=$(($count+1))
        if [ -d "$DstPath/$line" ]
        then
            break
        elif [ "$count" -gt "10" ]
        then
            break
        else
            echo "not find $line"
            sleep 1
        fi
    done
    $TarTool -zxpf "$SrcPath/$line.tar.gz" -C "$DstPath.recovery"
    adjustMode "$DstPath.recovery/$line" "$DstPath/$line"
    cp -Rpf "$DstPath.recovery/$line" "$DstPath/"
    rm -rf "$DstPath.recovery/$line"
done < "$CfgPath"
rm -rf "$DstPath.recovery"
rm "$CfgPath"
setprop "persist.sys.shflag" 1
!
