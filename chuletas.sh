python
------
#!/bin/python
# encoding: utf-8

#! /usr/bin/env python

bash
----

#!/bin/bash



mysql
-----
mysqldump -hhost -uusuario -ppassword basededatos > basededatos.sql
mysql -u usuario -p basededatos < basededatos.sql


SELECT * FROM shop ORDER BY article;

select User from mysql.user;

select u.User,Db from mysql.user u,mysql.db d where u.User=d.User;
SELECT user,host FROM mysql.user;
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
FLUSH PRIVILEGES;



postgresql
-----------


os
--
command utils

uname -a
ps aux 
ls -halt

ls -haltr | awk '{print $9}' | xargs file | sort -k 3

DATE
----

#!/bin/bash

# Print default output
echo `date`

# Print current date without the time
echo `date +"%m-%d-%y"`

# Use 4 digits for year
echo `date +"%m-%d-%Y"`

# Display time only
echo `date +"%T"`

# Display 12 hour time
echo `date +"%r"`

# Time without seconds
echo `date +"%H:%M"`

# Print full date
echo `date +"%A %d %b %Y %H:%M:%S"`

# Nanoseconds
echo Nanoseconds: `date +"%s-%N"`

# Different timezone by name
echo Timezone: `TZ=":US/Eastern" date +"%T"`
echo Timezone: `TZ=":Europe/UK" date +"%T"`

# Print epoch time - convenient for filenames
echo `date +"%s"`

# Print week number
echo Week number: `date +"%V"`

# Create unique filename
f=`date +"%s"`
touch $f
ls -l $f
rm $f

# Add epoch time to existing file
f="/tmp/test"
touch $f
mv $f $f.`date +"%s"`
ls -l "$f".*
rm "$f".*

# sort by size
du -hs * | sort -hr

#conections stablished
netstat -nt | tail -n +3 | grep ESTABLISHED

#while on list
while read F  ; do
        echo $F
done </tmp/filelist.txt

#command on loop
for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done

#display higth and sort the 5 most heavy file
du -hs * | sort -rh | head -5
# with recursive subdirectory
du -Sh | sort -rh | head -5

#display the biggest file size only
find -type f -exec du -Sh {} + | sort -rh | head -n 5

# snippet query dig for ip of hostname
domains=(example.com example.net example.org)
for domain in "${domains[@]}"; do
    echo "$domain : $(dig +short a $domain | tail -n1)"
done


#regexp
grep "^[[:alnum:]]"
grep "^[[:alpha:]]"
grep "^[[:blank:]]"
grep "^[[:digit:]]"
grep "^[[:lower:]]"
grep "^[[:space:]]"
#ip directions
grep -oi "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}"
#begin with
grep “^hello”
#contain leter a to e
grep “[a-e]”
#lowe and upper
grep -i “hello”
#GREP_OPTIONS
export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'
#recursive
grep -r "jota" *
# search two diferent words
egrep -w 'word1|word2'
# invert match
grep -v bar
#number line 
grep -n line
#common utilization for grep
#cpu model
cat /proc/cpuinfo | grep -i 'Model'
#grep + find
find . -type f -exec grep -il 'foo' {} \;
#grep gzip file
zgrep foo myfile.gz 

#timeout read variable

if [[ $# -le 0 ]]
then
    printf "Not enough arguments!\n"
    exit
fi

TIMEOUT=$1
VARIABLE=0

while :
do
  ((VARIABLE = VARIABLE + 1))
  read -t $TIMEOUT -p "Do you want to Quit(Y/N): "
  if [ $VARIABLE -gt $TIMEOUT ]; then
    echo "Timing out - user response took too long!"
    break
  fi

  case $REPLY in
  [yY]*)
    echo "Quitting!"
    break
    ;;
  [nN]*)
    echo "Do not quit!"
    ;;
  *) echo "Please choose Y or N!"
     ;;
  esac
done

#dialog https://aplicacionesysistemas.com/dialog-crear-menus-tus-scripts/

#cron
m h dow mon dom
* * *   *   *
@reboot
@yearly
@monthly
@weekly
@daily
@midnight
@hourly
.--------------- minuto (0-59) 
|  .------------ hora (0-23)
|  |  .--------- día del mes (1-31)
|  |  |  .------ mes (1-12) o jan,feb,mar,apr,may,jun,jul... (meses en inglés)
|  |  |  |  .--- día de la semana (0-6) (domingo=0 ó 7) o sun,mon,tue,wed,thu,fri,sat (días en inglés) 
|  |  |  |  |
*  *  *  *  *  comando a ejecutar
#https://cronitor.io/ monitor your cron jobs

#redirect
1>filename # Redirect stdout to file "filename."
1>>filename # Redirect and append stdout to file "filename."
2>filename # Redirect stderr to file "filename."
2>>filename # Redirect and append stderr to file "filename."
&>filename # Redirect both stdout and stderr to file "filename." sThis operator is now functional, as of Bash 4, final release.
2>&1 # Redirects stderr to stdout. Error messages get sent to same place as standard output.

ls -yz >> command.log 2>&1
#  Capture result of illegal options "yz" in file "command.log."
#  Because stderr is redirected to the file,
#+ any error messages will also be there.

utility &>/dev/null 
#is the same as 
utility >/dev/null 2>&1 