# let <arithmetic expression>
let a=5+4
echo "1: " $a

let "a = 5 + 4"
echo "2: " $a

let a++
echo "3: " $a

let ++a
echo "4: " $a

let --a
echo "5: " $a

let "a = 5 * 9"
echo "6: " $a

let a=5*8
echo "7: " $a

let "a = $1 + 20"
echo "8: " $a

let a=10%3
echo "9: " $a

echo "10: " 5+4

# Output:

# 1:  9
# 2:  9
# 3:  10
# 4:  11
# 5:  10
# 6:  45
# 7:  40
# 8:  20
# 9:  1
# 10:  5+4

# expr item1 operator item2

expr 2 + 3
expr "2 + 3"
expr 2+3
expr 2 * 3
expr 2 \* 3
expr 10 % 3

a=$( expr 10 - 4 )
echo $a

# Output:

# 5
# 2 + 3
# 2+3
# expr: syntax error: unexpected argument ‘arithmetic_exp.sh’
# 6
# 1
# 6

# $(( expression ))

a=$(( 2 + 3 ))
echo $a

a=$((2+3))
echo $a

b=$((a+3))
echo $b

b=$((a+3))
echo $b

((b++))
echo $b

# Output:

# 5
# 5
# 8
# 8
# 9

# variable length
# ${#variable}

a="Hello World"
echo ${#a}

b=1234
echo ${#b}

# Output:

# 11
# 4