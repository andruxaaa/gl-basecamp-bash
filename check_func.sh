check() {
    var=$1
    # check input parametr match format 123.123+321.321
    re='^[0-9]+([.][0-9]+)?\+|\-|\*|\/[0-9]+([.][0-9]+)?$'

    if [[ "$var" =~ $re ]]; then
        echo "Entered string OK."
    else 
     echo "Entered string does not match. Example - 10.5/3";
     exit 128
    fi
}