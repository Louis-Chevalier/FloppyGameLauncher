#!/bin/bash
input="./gameinfo.txt"
line=""
i=0
declare -a PROPERTIES
while IF=: read -r prop val
do
	((i++))
	echo $prop
	echo $val
	PROPERTIES[i]="$val"
	#line << $in
done < "$input"

echo $i

if [ -x "${PROPERTIES[1]}" ]; then
        "${PROPERTIES[1]}"
else
	echo "Game is not executable"
fi

"${PROPERTIES[1]}"
#steam "${PROPERTIES[2]}"
echo "Done"
#steam steam://run/427520
#/home/Louis/.local/share/Steam/steamapps/common/Factorio/bin/x64/factorio
