#!/usr/bin/env bash


if [[ $(echo "Bug: Test" | bash ./title.sh) != 'true' ]]; then
  >&2 echo "fail with title"
  exit 1
fi

if [[ $(cat example.md | bash ./body.sh) != 'true' ]]; then
  >&2 echo "fail with example.md body"
  exit 1
fi

if [[ $(cat somethingbad.md | bash ./body.sh) != 'true' ]]; then
  >&2 echo "fail with somethingbad.md body"
  exit 1
fi
