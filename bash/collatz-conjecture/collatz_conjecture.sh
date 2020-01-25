#!/usr/bin/env bash

main () {
  n=$1
  steps=0

  if (( $n < 1 )); then
    echo "Error: Only positive numbers are allowed"
    exit 1
  fi

  while (( $n != 1 )); do

    if (( $n % 2 == 0 )); then
      let n=$(( $n / 2 ))
    else
      let n=$(( 3 * $n + 1 ))
    fi

    let steps++

  done

  echo $steps
}

main "$@"
