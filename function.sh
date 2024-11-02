# function name(parameter) {
#    #statements
# }

function print_func {
    echo "inner function"
}

print_func

function func_with_param {
    echo $1
    echo $2
}

func_with_param "param1" "param2"

func_name() {
    echo "function without function key word"
}

func_name

var="out_func"
echo $var

function local_var {
    local var="func_param1"
    var2=5
    echo $var $var2
}

local_var

echo $var $var2

print_ls() {
    echo "print_ls function"
    return 5
}

print_ls
echo $? # return value

ls() {
    command ls -la
}

ls

# Output:

# inner function
# param1
# param2
# function without function key word
# out_func
# func_param1 5
# out_func 5
# print_ls function
# 5
# total 58
# drwxr-xr-x 1 thema 197609    0 Jul  8 00:27 .
# drwxr-xr-x 1 thema 197609    0 Jul  7 22:51 ..
# -rw-r--r-- 1 thema 197609  876 Jul  7 18:09 arithmetic_exp.sh
# -rw-r--r-- 1 thema 197609  536 Jul  8 00:51 function.sh
# -rw-r--r-- 1 thema 197609 1580 Jul  7 23:18 if_statement.sh
# -rw-r--r-- 1 thema 197609 2075 Jul  8 00:27 loops.sh
# -rw-r--r-- 1 thema 197609  517 Jul  7 18:02 myScript.sh