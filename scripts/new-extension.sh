#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

read -p 'Package name: ' NAME
read -p 'Description: ' DESCRIPTION

ext_dir="$(realpath $DIR/../$NAME)"
template_dir="$(realpath $DIR/../template)"

for file in $(find $template_dir -type f | sed "s!^$template_dir/!!"); do
  echo "Copying $file to $ext_dir"
  mkdir -p "$ext_dir/$(dirname $file)"
  sed -e "s/{{ NAME }}/$NAME/g" \
    -e "s/{{ DESCRIPTION }}/$DESCRIPTION/g" $template_dir/$file >"$ext_dir/$file"
done

echo "Done!"
