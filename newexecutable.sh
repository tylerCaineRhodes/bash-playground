#! /usr/local/bin/bash

read -p "name of file: " filename

touch ${filename}

echo "#! /usr/local/bin/bash" >> ${filename}
echo "############## Automatically Created Script ##########" >> ${filename}

chmod +x ${filename}

echo "Done"
