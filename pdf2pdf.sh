#!/usr/bin/env bash

#pdf2pdf.sh

for file in "$@"
do
	if file --mime-type "$file" | grep -q pdf$; then
	    echo "Converting $file"

		sleep 1	
		echo -ne '###                     (20%)\r'
		sleep 1
		echo -ne '######                  (40%)\r'
		sleep 1
		echo -ne '#########               (60%)\r'
		sleep 1
		echo -ne '############            (80%)\r'
		sleep 1
		echo -ne '##################     (100%)\r'
		echo -ne '\n'

		# important, update time-stamp
		touch $file

		echo -e 'Conversion completed.\n'

	else
	  	echo -e "Warning: Cannot convert $file, not of type pdf\n"
	fi

done
