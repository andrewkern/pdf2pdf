#!/usr/bin/env bash

#pdf2pdf.sh

for file in "$@"
do
	if file --mime-type "$file" | grep -q pdf$; then
	    echo "Converting $file"

		if [ -f ./fastpdf ]; then
			./fastpdf
		else
   			echo "File fastpdf does not exist. Please compile (see readme)."
			break;
		fi	

		# important, update time-stamp
		touch "$file"
		
		# rasterize and subtly degrade quality
		convert -density 95 "$file" -quality 95 $RANDOM.pdf

		echo -e 'Conversion completed.\n'

	else
	  	echo -e "Warning: Cannot convert $file, not of type pdf\n"
	fi

done
