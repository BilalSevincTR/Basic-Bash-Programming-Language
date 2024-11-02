# comment line

# echo $0 # gives the name of the program

# echo $1 $2

# echo $$ # process id where the script runs

# echo $USER # user running the program

# echo $RANDOM # Generates random numbers

# echo $HOSTNAME

# echo Hello World!!!

myVariable="Hello World"

echo $myVariable

read varName

echo "varName: " $varName

read -p "Username: " username
read -sp "Password: " password

echo username password

# Output:

# Hello World
# bilal
# varName:  bilal
# Username: bilal123
# Password: username password
