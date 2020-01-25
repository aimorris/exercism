#!/usr/bin/env bash

main () {

  if [[ $1 =~ [^GCTA] ]]; then
    echo "Invalid nucleotide detected."
    exit 1
  fi

  echo $1 | tr GCTA CGAU
}

main "$@"
