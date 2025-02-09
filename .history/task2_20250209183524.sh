#!/bin/bash

# Create the sample file
cat > sample.txt <<EOF
apple
banana
apple
cherry
banana
banana
date
EOF

# Find all lines containing "banana":
grep "banana" sample.txt

# Find all lines containing "banana":
grep -v "banana" sample.txt

# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banaona, cherry, date):
sort sample.txt | uniq

# run the command man uniq. Use what you found to extend the uniq comment to count the occurange of each work:
sort sample.txt | uniq -c

# run the command man uniq. Use what you found to extend the uniq comment to count the occurange of each work:
grep "banana" sample.txt | uniq -c