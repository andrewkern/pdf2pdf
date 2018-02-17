#!/usr/bin/env bash

#wordx.sh

for file in "$@"
do
	if file --mime-type "$file" | grep -q msword$; then
	    echo "Converting $file"

		# important, update time-stamp
		mv $file "$file"x
		echo -e 'Conversion completed.\n'

	else
	  	echo -e "Warning: Cannot convert $file, not of type .doc\n"
	fi

done
