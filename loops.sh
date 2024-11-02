echo "--------------WHILE--------------"
# while [[ <condition> ]]; do
#    #statements
# done
counter=1
 while [[ counter -lt 5 ]]; do
    echo $counter
    ((counter++))
 done

echo "--------------FOR (C TYPE)--------------"
# C type for loop
# for (( i = 0; i < 10; i++ )); do
#    #statements
# done

for (( i = 0; i < 10; i++ )); do
    echo $i
done

echo "--------------FOR--------------"
# for var in <list>
# do
#    #statements
# done

for l in $( ls ); do
    echo $l
done

echo "--------------FOR WITH RANGES--------------"
for value in {1..5}; do
    echo $value
done

echo "--------------UNTIL--------------"
# until [[ <condition> ]]; do
#    #statements
# done
counter=1
until [[ counter -gt 10 ]]; do
    echo $counter
    ((counter++))
done

echo "--------------BREAK--------------"
for (( i = 0; i < 10; i++ )); do
    if [[ $i -gt 5 ]]; then
        echo "Break statement "
        break
    fi
    echo $i
done

echo "--------------Continue--------------"
for (( i = 0; i < 10; i++ )); do
    if [[ $i == 5 ]]; then
        echo "Continue statement "
        continue
    fi
    echo $i
done

echo "--------------SELECT--------------"
names="Bash Python C Java Quit"

PS3="Please enter your choice: "

select name in $names; do
    if [[ $name = "Quit" ]]; then
        break
    fi
    echo $name "welcome to class"
done

# Output:

# --------------WHILE--------------
# 1
# 2
# 3
# 4
# --------------FOR (C TYPE)--------------
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# --------------FOR--------------
# arithmetic_exp.sh
# if_statement.sh
# loops.sh
# myScript.sh
# --------------FOR WITH RANGES--------------
# 1
# 2
# 3
# 4
# 5
# --------------UNTIL--------------
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# --------------BREAK--------------
# 0
# 1
# 2
# 3
# 4
# 5
# Break statement
# --------------Continue--------------
# 0
# 1
# 2
# 3
# 4
# Continue statement
# 6
# 7
# 8
# 9
# --------------SELECT--------------
# 1) Bash
# 2) Python
# 3) C
# 4) Java
# 5) Quit
# Please enter your choice: 1
# Bash welcome to class
# Please enter your choice: 5


