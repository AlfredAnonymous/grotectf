#!/bin/bash

for map in $(ls maps/*.wad)
do
	zdbsp \
		--empty-blockmap \
		--zero-reject \
		--extended \
		--compress \
		--output=$map \
	$map
done
