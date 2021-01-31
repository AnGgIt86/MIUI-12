#!/sbin/sh

cur=`dirname $0`
echo "############# `date` #############" > /sdcard/rreplacer.txt 2>&1
mount -a
echo "Mounted partitions: " >> /sdcard/rreplacer.txt 2>&1
echo "----------------------" >> /sdcard/rreplacer.txt 2>&1
mount >> /sdcard/rreplacer.txt 2>&1
echo "----------------------" >> /sdcard/rreplacer.txt 2>&1
for f in $cur/*
do
    if [ -d $f ]
    then
        apn=$(basename $f)
        echo -e "\nFound folder $apn" >> /sdcard/rreplacer.txt 2>&1
        apk=bla
        if [ -f /system/system/framework/$apn ]; then apk=/system/system/framework/$apn; fi
        if [ -f /system/system/app/miuisystem/$apn ]; then apk=/system/system/app/miuisystem/$apn; fi
        if [ "$apk" != "bla" ]
        then
            echo "Found $apk" >> /sdcard/rreplacer.txt 2>&1
            cd $f
            $cur/zip -r $apk * >> /sdcard/rreplacer.txt 2>&1
            echo "----------------------" >> /sdcard/rreplacer.txt 2>&1
        else
            echo "Not found /system/system/framework/$apn or /system/system/app/$apn" >> /sdcard/rreplacer.txt 2>&1
        fi
    fi
done
echo -e "\nAll done" >> /sdcard/rreplacer.txt 2>&1
