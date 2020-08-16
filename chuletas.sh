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