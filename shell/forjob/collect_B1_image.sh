#!/bin/bash
dir=/Users/abel/Documents/mountfolder/
destdir=/Users/abel/Documents/mountfolder/image20191121
# cp -r "${dir}image/B1-Firebox-A001"/* "${dir}image20191118/B1-Firebox-A001"
folders=(B1-Firebox-A001 B1-Firebox-B001 B1-Firebox-C001)
# folders=('B1-Firebox-A001')
array_name=(value0 value1 value2 value3)
cd $destdir
rm -rf *
for folder in ${folders[@]}
    do 
        echo $folder
        cd $destdir
        mkdir $folder

        for subfolder in ` ls ${dir}image/$folder`  
            do  
                if [ -d ${destdir}"/"$subfolder ]   
                then  
                    ergodic $1"/"$subfolder  
                else  
                    echo "${dir}image/$folder/$subfolder" 
                    cp "${dir}image/$folder/$subfolder"/* "$destdir/$folder" 
                    cd "$destdir/$folder" 
                    rename "s/.jpg/.jpeg/" *
        fi  
done  



done

for file in ` ls ${dir}image/B1-Firebox-A001`  
    do  
        if [ -d ${destdir}"/"$file ]   
        then  
             ergodic $1"/"$file  
        else  
             echo "${dir}image/B1-Firebox-A001/$file" 
             cp "${dir}image/B1-Firebox-A001/$file"/* "$destdir" 
        fi  
done  


