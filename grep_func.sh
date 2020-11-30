grep_f() {
    num1=$(echo $var| grep -Eo '^[.0-9]+')
    num2=$(echo $var| grep -Eo '[.0-9]+$')
    oper=$(echo $var| grep -Eo '[/+*-]') 
}