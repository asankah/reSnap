#!/bin/bash

input_file=$1
output_file=${2:-${input_file}}

if [[ -z "$output_file" ]]; then
  echo "Usage: $(basename $0) <image_file>.png <output_filename>.png"
  echo "  <output_filename> defaults to <image_file>."
  exit 1
fi

# magick "${input_file}" -fill white -draw 'rectangle 0,0 100,100' "${output_file}"
# magick "${output_file}" -fill white -draw "rectangle 0,1870 2,1872" "${output_file}"
# magick "${output_file}" -transparent white -trim -resize 50% +repage "${output_file}"

magick "${input_file}" -fill white -draw 'rectangle 0,0 100,100' \
  -fill white -draw "rectangle 0,1870 2,1872" \
  -transparent white -trim -resize 50% +repage "${output_file}"
