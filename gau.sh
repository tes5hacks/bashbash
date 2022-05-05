#!/bin/bash

figlet GAU to XSStool

# GAU
echo "Now, running gau on $1"
echo $1 | gau > gau.txt

echo "Now, running waybackurls on $1"
echo $1 | waybackurls >> gau.txt

# Sort the duplicate urls
echo "Now sorting duplicate urls"
cat gau.txt | sort -u > ultimate-gau.txt

# xsstool.py
# Now, it will run xsstool on the gau/ waybackurls results
echo "Now, running xsstool on $1"
cat ultimate-gau.txt | python3 xsstool.py > reflection.txt
