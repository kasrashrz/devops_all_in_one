set -v
array=(one two three four five six)
echo ${array[0]}

# counts array len
number=${#array[@]}

for (( i=0;i<$number;i++ )) do

    echo "${array[${i}]}"
done