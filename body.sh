#!/usr/bin/env bash

input=$(cat)
regex='## Summary\n*(.*)\n*## Environment\n*(.*)\n*## Steps to reproduce\n*(.*)\n*## Expected result\n*(.*)\n*## Actual result\n*(.*)'

if [[ $input =~ $regex ]]; then
    echo "true"
else
    echo "false"
fi
