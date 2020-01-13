#!/usr/bin/env bash

main () {
if [[ $1 =~ [^0-9]+ ]] || [ $# -ne 1 ]; then
  echo 'Usage: leap.sh <year>';
  exit 1;
elif [[ $(($1 % 400)) -eq 0 ]]; then
  echo 'true';
elif [[ $(($1 % 100)) -eq 0 ]]; then
  echo 'false';
elif [[ $(($1 % 4)) -eq 0 ]]; then
  echo 'true';
else
  echo 'false';
fi
}

main $@
