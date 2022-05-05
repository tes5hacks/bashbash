#!/bin/bash

figlet GAU to XSStool

# GAU
echo "Now, running gau on $1"
echo $1 | gau > gau.txt

# xsstool.py
# Now, it will run xsstool on the gau results
echo "Now, running xsstool on $1"
cat gau.txt | python3 xsstool.py > reflection.txt
