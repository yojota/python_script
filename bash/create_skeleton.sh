#!/bin/bash
# copy folder recursive excluye relative folder
# $1 = source path 
# $1 = destination path
# remember add / for copy directory and do not create subdirectory
rsync -rvq --exclude '.terraform' $1/ $2/
find ./$2 -type f -exec sed -i -e 's/'$1'/'$2'/g' {} \;