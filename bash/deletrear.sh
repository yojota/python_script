#!/bin/bash
#find file
for i in $(find ./ -newermt "2020-07-24" ! -newermt "2020-07-25"); do
  echo $i | xargs file | grep executable --color 
done