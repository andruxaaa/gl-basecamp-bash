#!/bin/bash
source ./calc_func.sh
source ./check_func.sh
source ./grep_func.sh

# check input is similar to 10.5/3
check $1

#read num1 num2 oper from var
grep_f

echo "$num1 $oper $num2 = $(calc $num1 $num2 "$oper") "
exit 0
