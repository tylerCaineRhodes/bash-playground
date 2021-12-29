#! /usr/local/bin/bash

read -p "Type an integer between 1 and 4 " num

if [ $num == "1" ]; then
  echo "typed 1"
elif [ $num == "2" ]; then
  echo "typed 2"
elif [ $num == "3" ]; then
  echo "typed 3"
elif [ $num == "4" ]; then
  echo "typed 4"
else
  echo "typed a number out of range"
fi

echo "bye"

# 3 -eq 3       3 == 3
# 3 -ne 4       3 != 4
# 3 -gt 1       3 > 1
# 3 -lt 7       3 < 7

# -o             ||
# -a             &&
# -z             empty?
# -e             exist?
# -d             is_directory?
# -r             readable?
# -w             writable?
# -x             executable?
# -s             not_empty?
# -f             is_file?
# !              not

# 3 -ge 3       3 >= 3
# 3 -le 3       3 <= 3
