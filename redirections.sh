#! /bin/bash

##### HERE DOCUMENT #####
# EOF can be literally anything, denoting the end of the file
cat << EOF
random
words
to
type
EOF

echo -e "\n##########################\n"

bc << EOF
(1 < 0) || (2 > 3)
3 + 2
a=10
20*a
EOF
##### HERE DOCUMENT #####


##### HERE STRING #####
cat <<< "string"
s="our new string 123"
echo $s
cat <<< $s

echo -e "\n##########################\n"

bc <<< "1 * 3"

bool=$(bc <<< "(10 < 5) || (1 < 10)")
echo $bool

read w <<< "this is my value"
echo $w
q="3 * 7 + 5"
bc <<< $q
##### HERE STRING #####
