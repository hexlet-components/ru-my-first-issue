#!/usr/bin/env bash

input=$(cat)
regex='^Bug:.*'

if [[ $input =~ $regex ]]; then
    echo "true"
else
    echo "false"
fi
