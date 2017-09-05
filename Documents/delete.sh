#!/bin/bash
while IFS='=' read -ra in; do
	echo " mailq | tail -n +2 | awk 'BEGIN { RS = \"\" } $7 ~ /${in[3]}i/  { print $1 }' | tr -d '*!' | sudo postsuper -d -"
done

