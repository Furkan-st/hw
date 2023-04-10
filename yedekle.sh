
#!/bin/bash
cdizin=$(pwd)
hdizin="/tmp/SisProg"
hdizin2="/tmp/SisProg/Yedek"

function yedekci(){
    tarih=$(date +%Y-%m-%d\ %H:%M:%S)
    mkdir "$tarih"
    chmod 700 "$tarih"
    stat "$tarih"
    cd "$hdizin"
    cp Dosyalar/* Yedek/"$tarih"
    
}

if [ "$cdizin" = "$hdizin" ]; then
    cd "$hdizin2"
    yedekci
else
    cd "$hdizin2"
    yedekci
fi
