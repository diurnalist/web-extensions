#!/usr/bin/env bash

out=""
for file in "$@"; do
  name="$(jq -r .name "$file")"
  desc="$(jq -r .description "$file")"
  out="$out**[$name](./$(dirname "$file"))**: $desc\n"
done

lead='# BEGIN INVENTORY$'
tail='# END INVENTORY$'
sed -i.bak -e "/$lead/,/$tail/{ /$lead/{p; a $out
}; /$tail/p; d }" README.md && rm README.md.bak
