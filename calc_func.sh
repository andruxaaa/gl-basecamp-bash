calc() {
        local z=00000000000000000000000000000000
        local a1=${1%.*}
        local x1=${1//./}
        local n1=$((${#x1}-${#a1}))
        local a2=${2%.*}
        local x2=${2//./}
        local n2=$((${#x2}-${#a2}))
        local n=$n1
        if (($n1 < $n2)); then
                local n=$n2
                x1=$x1${z:0:$(($n2-$n1))}
        fi
        if (($n1 > $n2)); then
                x2=$x2${z:0:$(($n1-$n2))}
        fi
        if [ "$3" == "/" ]; then
                x1=$x1${z:0:$n}
        fi
        local r=$(($x1"$3"$x2))
        local l=$((${#r}-$n))
        if [ "$3" == "*" ]; then
                l=$(($l-$n))
        fi
        echo ${r:0:$l}.${r:$l}
}