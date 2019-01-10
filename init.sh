#!/bin/bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

RELATIVE_DIR=$( dirname "$(realpath $0)" )
echo ${RELATIVE_DIR}

for DIR in ${RELATIVE_DIR}/*/
do
    DIR=${DIR%*/}
    DIR_NAME=${DIR##/*/}
    FILE_NAME=${DIR}/${DIR_NAME}.sh

    if [ ! -f .git/hooks/${DIR_NAME} ]; then
        echo "Creating symbolic link for ${DIR_NAME}"

        chmod +x ${FILE_NAME}
        ln ${FILE_NAME} .git/hooks/${DIR_NAME}
    fi

done
