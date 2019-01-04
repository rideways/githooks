#!/bin/bash
for DIR in */
do
    DIR=${DIR%*/}

    if [ ! -f .git/hooks/${DIR} ]; then
        echo "Creating symbolic link for ${DIR}"

        FILE=${DIR}/${DIR}.sh

        chmod +x ${FILE}
        ln ${FILE} .git/hooks/${DIR}
    fi

done
