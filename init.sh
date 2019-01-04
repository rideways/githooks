#!/bin/bash

for dir in */
do
    dir=${dir%*/}

    if [ ! -f .git/hooks/${dir} ]; then
        echo "Creating symbolic link for ${dir}"

        file=${dir}/${dir}.sh

        chmod +x ${file}
        ln ${file} .git/hooks/${dir}
    fi

done
