#! /bin/bash

# Based on https://stackoverflow.com/a/24116076

IFS='::' read -ar function <<< "$1"

funindexes=("${!function[@]}")

prefix=""
middle=""
suffix=""
rettype=$2

for index in "${funindexes[@]}"
do
    if [ "$index" == "${funindexes[-1]}" ]; then
    middle="$rettype ${function[index]};"
    elif [ -n "${function[index]}" ]; then
    prefix="${prefix}struct ${function[index]}{"
    suffix="${suffix}};"
    fi
done

echo -e "$3\n$prefix$middle$suffix $rettype $1{}" | x86_64-unknown-cosmo-c++ -x c++ -w "$4" -S - -o- 2>&- | grep "^_.*:$" | sed -e 's/:$//'
