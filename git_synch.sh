# sync script github

#!/bin/bash

export PATH=$PaTH:/usr/local/bin

gstatus=`git status --porcelain`

if [ ${#gstatus} -ne 0 ]
then

    git add --all
    sleep 10
    git commit -m "Automated sync: $gstatus"
    sleep 10
	git pull --rebase
    sleep 10
    git push

fi
