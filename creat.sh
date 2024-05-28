#!/bin/bash
COURSEBASE="../missing-semester-cn.github.io/_2020"
COUNT=0



file_list=$(find $COURSEBASE -type f -name "*.md" | sed -E "s/.*\/(.*).md/\1/g" | paste -sd \ -)

for file in $file_list; do
	((COUNT++))
	echo "create soltion file for $file"
	touch "#$COUNT-$file-solution.md"
done
