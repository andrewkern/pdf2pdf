#!/usr/bin/env bash

#pdf2pdf.sh

for file in "$@"
do
	if file --mime-type "$file" | grep -q pdf$; then
	    echo "Converting $file"

		if [ -f ./fastsleep ]; then
			./fastsleep
		else
   			echo "File fastsleep does not exist. Please compile (see readme)."
			break;
		fi	

		# important, update time-stamp
		touch $file
		
		# convert vector to raster and downscale to 75dpi (requires imagemagick)
		convert -density 75 $file -quality 75 output.pdf

		echo -e 'Conversion completed.\n'

	else
	  	echo -e "Warning: Cannot convert $file, not of type pdf\n"
	fi

done
