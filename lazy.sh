#!/bin/sh

# Make sure your venv is not a subfolder of where this is run.
find . -name "*.py" | xargs -n1 -P8 black --py36 --line-length 80

for i in 0 1 2 3 4 5
do
find . -name "*.py" | xargs -n1 -P8 isort --apply --multi-line $i
git commit -am "isort multi-line: $i"
done
