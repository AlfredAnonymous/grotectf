#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')

if [ -f grotectf.pk3 ]; then
	rm -rf grotectf.pk3
fi

zip -r9 grotectf.pk3 $FILES -x *.backup* *.dbs *.bak *.db

