#!/bin/bash

[ -e  /tmp/some ] && echo -e "exists" || touch /tmp/some
cat << EOF > /tmp/some
    Hi Hi Hi Hi 
EOF

cat /tmp/some

read -p "give me some number: " SOME_NUM
if [[ $SOME_NUM -gt 10 ]]
then
    echo -e "greater than 10"
elif [[ $SOME_NUM -eq 10 ]]
then 
    echo -e "equal to 10"
else
    echo -e "less than 10"
fi


x=1
# while (( $x <= 5 ))
# OR
while [ $x -le 5 ]
do
    echo -e "x in WHILE is: ${x}"
    sleep 1
    x=$(( $x + 1 ))

done

# basic For
for x in {1..5}
do
    echo -e "x in FOR is: ${x}"
    sleep 1

done

# pro For
for (( x=1 ; x<=5 ; x++ ))
do
    echo -e "x in PRO FOR is: ${x}"
    sleep 1
done


# Until, waits for a condition
LOG_PATH=./log
until [ -f $LOG_PATH ]
do
    echo -e "wating for ${LOG_PATH} file to be created"
    sleep 1
done
echo -e "file created"


until ping -c1 www.google.com &> /dev/null
do
    echo -e "waiting for www.google.com"
    sleep 1
done
echo -e "Ping successful!"

# if the exit code is not 0, it will apt install it
which docker || apt install docker-ce

# -d checks if dir exist or not
# -e checks if file exist or not
# -le stands for less than
# -gt stands for greater than

DIR_PATH=./test
[ -d $DIR_PATH ] && echo -e "Directory exists" || echo -e "Directory does not exist"


read -p "whats your name? " NAME
echo "Hi ${NAME}"


# reads with default value
read -p "How old are you? [default 20]: " AGE
AGE=${AGE:-20}
echo -e "You are ${AGE} years old\n"


select OS_NAME in debian ubuntu arch alpine busybox
do
    echo "your OS: ${OS_NAME}"
    break
done