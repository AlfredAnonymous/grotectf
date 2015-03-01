#!/bin/bash

maps=$(ls maps/*.wad)
zdbsp="zdbsp"

if [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  $zdbsp = "zdbsp.exe"
fi

if [ -n "$(hash $zdbsp)" ]; then
  echo "Could not find $zdbsp in \$PATH"
  exit 1
fi

for map in $maps
do
	$zdbsp \
		--empty-blockmap \
		--zero-reject \
		--extended \
		--compress \
		--output=$map \
	$map
done
