#!/bin/bash

#Takes files as specified in versioned-files database and copies them to github repository location

COPY_COUNT=0

for file in `cat versioned-files`; do

    echo "Updating file '${file}'..."
    cp -ru ~/$file . 2>/dev/null

    if [ $? -ne "0" ]; then
	echo "Error copying ${file}. Continuing."
    else
        let "COPY_COUNT += 1"
    fi

done

FILE_COUNT=$(wc -l < versioned-files)
echo "Finished. Updated ${COPY_COUNT} of ${FILE_COUNT} files from home directory."
