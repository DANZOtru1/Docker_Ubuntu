#!/bin/bash
echo ""
echo "Kuznetsov Daniil gr726"
echo "Resizer-227"
echo "-----------------------"
echo "Eta programma izmenit format i razmer photographyi"

for ((;;))
do
echo ""

for ((;;))
do
echo ""
echo "All files: " $(ls)

echo ""
read -p "Enter filename: " filename

if [ -e "$filename" ]
then
echo "Naiden file - $filename"
break
else
echo "file NE NAIDEN" >&2
fi
done

read -p "enter format : " format

read -p "enter size : " size

mogrify -format $format $filename
for ((;;))
do
echo ""
echo "All files: " $(ls)

echo ""
read -p "Enter filename: " filename1

if [ -e "$filename1" ]
then
echo "Naiden file - $filename1"
break
else
echo "file NE NAIDEN" >&2
fi
done
mogrify -resize $size $filename1

echo ""
echo "zavershit - 0, prodolzhit - 1"
read result
if [ "$result" -eq 0 ]
then
break
fi
done


