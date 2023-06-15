#! /bin/bash

read -p "name of file: " file_name

touch ${file_name}

echo "#! /bin/bash" >> ${file_name}
echo "############## Automatically Created Script ##########" >> ${file_name}

chmod +x ${file_name}

echo "Done"
