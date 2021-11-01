#1/bin/bash 

x=$1
y=$2
a=$(($1 + $2))
b=$(($1 - $2))
c=$(($1 * $2))
if [[ $y -eq 0 ]]
then
	d="#"
	echo "$a $b $c $d"
elif [[ $x -eq 0 ]] 
then
  	d=0.00
  	echo "$a $b $c $d"
else 
  	m=$(bc <<< "scale=2; $x/$y" )
fi
if [[ $x -lt 0 && $x < $y && $y -gt 0 ]]
then 
  	d="-0$(bc <<< "scale=2; $x/$y*-1" )"
  	echo "$a $b $c $d"
elif [[ $x -gt 0 && $x -lt $y && $y -lt 0 ]]
then 
  	d="-0$(bc <<< "scale=2; $x/$y*-1" )"
  	echo "$a $b $c $d"
elif [[ $x -gt 0 && $x -lt $y && $y -gt 0 ]]
then 
  	d="0$(bc <<< "scale=2; $x/$y" )"
  	echo "$a $b $c $d"
elif [[ $x -lt 0 && $x -lt $y && $y -lt 0 ]]
then 
  	d="0$(bc <<< "scale=2; $x/$y" )"
  	echo "$a $b $c $d"  
elif [[ $x -ge $y && $y -ne 0 ]]
then
  	echo "$a $b $c $m"
fi
