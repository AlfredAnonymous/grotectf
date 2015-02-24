#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')
CURRENT_REVISION=$(git log --pretty=format:'%h' -n 1)

if [ -f grotectf-$CURRENT_REVISION.pk3 ]; then
	rm -rf grotectf-$CURRENT_REVISION.pk3
fi

zip -9r grotectf-$CURRENT_REVISION.pk3 $FILES -x *.backup* *.dbs *.bak *.db
