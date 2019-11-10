#!/bin/bash

projects=(zipkin-service im-service dali-gateway eureka-service room-service helplink-common device-service push-notification-service marker-service dispatch-center-server notices-service contact-service)
# projects=(aa)

dir=/Users/abel/Documents/abelproject/ldbackend


for file in ${projects[*]}; do
        # echo "current folder $file"
        if [ -d "$dir"/"$file" ]
        then
                 cd "$dir"/"$file" && git pull
                 echo exit folder: $PWD
                #  && git pull
        else
                # cd "$dir"
                # echo $PWD
                # echo "git clone https://git.leediancn.com:9082/Help-Link/$file.git"
                cd $dir && echo $PWD && git clone https://git.leediancn.com:9082/Help-Link/$file.git
        fi

done
echo ''
