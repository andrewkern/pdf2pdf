#!/usr/bin/env bash

#pdf2pdf.sh

for file in "$@"
do
	if file --mime-type "$file" | grep -q pdf$; then
	    echo "Converting $file"

		sleep 1	
		echo -ne '###                     (16%)\r'
		sleep 1
		echo -ne '######                  (33%)\r'
		sleep 1
		echo -ne '#########               (50%)\r'
		sleep 1
		echo -ne '############            (66%)\r'
		sleep 1
		echo -ne '###############         (83%)\r'
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
