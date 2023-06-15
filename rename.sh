#! /bin/bash

type=""
while [ "$type" != "t" -a "$type" != "j" ]
do
  read -p "To change, choose a filetype. Press 'j' for .jpg or 't' for .txt: " type
  echo "You typed ${type}"

  case $type in
    "t")
      ext="txt"
      ;;
    "j")
      ext="jpg"
      ;;
    *)
      echo "You must choose 't' or 'j'"
      ;;
  esac
done

read -p "Choose a prefix for all .${ext} files in current directory: " prefix


for i in $(ls)
do
  if [ -f $i -a "${i: -4}" == ".${ext}" ]; then
    mv ${i} ${prefix}${i}
    echo "renamed ${i} to ${prefix}${i}"
  fi
done

echo "Done! "


