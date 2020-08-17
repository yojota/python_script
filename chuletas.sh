python
------
#!/bin/python
# encoding: utf-8

#! /usr/bin/env python

#input and print
print('What is your name?')   # ask for their name
myName = input()

#comparison
== 	Equal to
!= 	Not equal to
< 	Less than
> 	Greater Than
<= 	Less than or Equal to
>= 	Greater than or Equal to

#Augmented assigment
spam += 1 	spam = spam + 1
spam -= 1 	spam = spam - 1
spam *= 1 	spam = spam * 1
spam /= 1 	spam = spam / 1
spam %= 1 	spam = spam % 1

#conditional
name = 'Bob'
if name == 'Alice':
    print('Hi, Alice.')
else:
    print('Hello, stranger.')

#loop
spam = 0
while spam < 5:
    print('Hello, world.')
    spam = spam + 1

for i in range(5):
	print('Jimmy Five Times ({})'.format(str(i)))

#function
def spam(divideBy):
     try:
         return 42 / divideBy
     except ZeroDivisionError as e:
         print('Error: Invalid argument: {}'.format(e))
     finally:
         print("-- division finished --")

#list
spam = ['cat', 'bat', 'rat', 'elephant']
spam[0]
'cat'

#sort
spam = [2, 5, 3.14, 1, -7]
spam.sort()
spam
[-7, 1, 2, 3.14, 5]

#

bash
----

#!/bin/bash

#print


NAME="John"
echo "Hi $NAME"  #=> Hi John
echo 'Hi $NAME'  #=> Hi $NAME

#excution
##echo "$(pwd)"

#conditional
[[ -z STRING ]] 	Empty string
[[ -n STRING ]] 	Not empty string
[[ STRING == STRING ]] 	Equal
[[ STRING != STRING ]] 	Not Equal
[[ NUM -eq NUM ]] 	Equal
[[ NUM -ne NUM ]] 	Not equal
[[ NUM -lt NUM ]] 	Less than
[[ NUM -le NUM ]] 	Less than or equal
[[ NUM -gt NUM ]] 	Greater than
[[ NUM -ge NUM ]] 	Greater than or equal
[[ STRING =~ STRING ]] 	Regexp
(( NUM < NUM )) 	Numeric conditions
More conditions
[[ -o noclobber ]] 	If OPTIONNAME is enabled
[[ ! EXPR ]] 	Not
[[ X && Y ]] 	And
[[ X || Y ]] 	Or

#conditional
# String
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
else
  echo "This never happens"
fi


#function
get_name() {
  echo "John"
}

echo "You are $(get_name)"

#conditional
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi

##Loops
for i in /etc/rc.*; do
  echo $i
done

for ((i = 0 ; i < 100 ; i++)); do
  echo $i
done

for i in "${arrayName[@]}"; do
  echo $i
done

cat file.txt | while read line; do
  echo $line
done

#redirecction
python hello.py > output.txt   # stdout to (file)
python hello.py >> output.txt  # stdout to (file), append
python hello.py 2> error.log   # stderr to (file)
python hello.py 2>&1           # stderr to stdout
python hello.py 2>/dev/null    # stderr to (null)
python hello.py &>/dev/null    # stdout and stderr to (null)


#SQL

SQL: MySql, Oracle, Postgres, and MS-SQL. 
NoSQL: MongoDB, Redis, Neo4j, Cassandra, Hbase. 

#data bases SQL vs NoSql
https://docs.google.com/spreadsheets/d/1c9hoIP7LYE1k_JKPOkN5N_LyPnAT8vpp3j91UjeKLl4/edit#gid=0



Mysql
-----

#dump mysql
mysqldump -hhost -uusuario -ppassword basededatos > basededatos.sql
#restore mysql
mysql -u usuario -p basededatos < basededatos.sql
# select all columns from table sort 
SELECT * FROM shop ORDER BY article;
# view list users 
select User from mysql.user;
# view user from DBS
select u.User,Db from mysql.user u,mysql.db d where u.User=d.User;
# view user from hosts
SELECT user,host FROM mysql.user;
# change privileges 
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
# update privileges
FLUSH PRIVILEGES;



postgresql
----------
#login user postgres
sudo -i -u postgres
#postgresql cli
psql
# list dbs in engine
postgres=# \l
#quit cli
postgres=# \q
#backup
pg_dump Valersa > Valersa.tar
#backup -F
pg_dump -F Valersa > Valersa.tar
#restore
pg_restore -i -h localhost -p 5432 -U postgres -d mibase -v "/home/damian/backups/mibase.backup"
#restore generic
psql -U <username> -d <dbname> -1 -f <filename>.sql


MongoDB
-------

#backup
mongodump
mongodump --host=mongodb.example.net --port=27017
mongodump --out=/data/backup/
mongodump --collection=myCollection --db=test
#restore
mongorestore dump-2013-10-25/
mongorestore --port=<port number> <path to the backup>


Redis
-----
#dump backup
cp /var/lib/redis/dump.rdb /home/sammy/redis-backup-001
#with rdiff-backup
apt-get install -y rdiff-backup
rdiff-backup --preserve-numerical-ids /var/lib/redis /home/yojota/redis
#restore
rdiff-backup -r now /home/sammy/redis/dump.rdb /var/lib/redis/dump.rdb



OS
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
netstat -nt | tail -n +3 | grep CONN
netstat -l

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