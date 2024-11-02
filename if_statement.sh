# if [ <conditional> ]
# then
#    <some commands>
# fi

if [ "hello" = "hello" ]
then
    echo "right situation"
fi

a=5
if [ $1 = $a ]
then
    echo "the entered value is correct"
fi

# if [ <conditional> ]
# then
#    <some commands>
# else
#    <some commands>
# fi

if [ "hello" = "hello" ]
then
    echo "right situation"
else
    echo "wrong situation"
fi

if [ $1 -eq $a ]
then
    echo "the entered value is correct"
else
    echo "the entered value is wrong"
fi

if [ $1 -lt $a ]
then
    echo "the entered value is less than $a"
else
    echo "the entered value is greater than or equal to $a"
fi

if [ $1 -gt 3 ]
then
    echo "the entered value is greater than 3"
elif [[ $1 -eq 3 ]];
then
    echo "the entered value is $1"
else
    echo "the entered value is less than 3"
fi

if [[ "$2" = "test" ]] && [[ "$1" -eq 5 ]];
then
    echo "I'm learning boolean operators"
else
    echo "value is wrong"
fi

case $3 in
    start)
        echo "starting up"
        ;;
    stop)
        echo "is being stopped"
        ;;
    *)
        echo "default state"     
        ;;
esac   

if [[ $4 -gt 10 ]]; then
    echo "the value is greater than 10"
    if (( $4 % 2 == 0 ))
    then
        echo "the value is even"
    else
        echo "Our number is not divisible"
    fi
fi

# Output:

# right situation
# the entered value is correct
# right situation
# the entered value is correct
# the entered value is greater than or equal to 5
# the entered value is greater than 3
# I'm learning boolean operators
# starting up
# the value is greater than 10
# the value is even