#!/usr/bin/env bash

#pdf2pdf.sh
if test $# -eq 0 ; then
	echo "Error: pdf required for conversion to pdf"
	exit 1
fi

numerrors=0

for file in "$@"
do
	if file --mime-type "$file" | grep -q pdf$; then
		echo "Converting $file"

		if [ -f ./fastpdf ]; then
            if [ -x "$(command -v parallel)" ]; then 
            # Use 500 processes for the conversion
			parallel ./fastpdf ::: `seq 1 1 500`
            else
                ./fastpdf
            fi
		else
			echo "File fastpdf does not exist. Please compile (see readme)."
			break;
		fi	

		# important, update time-stamp
		touch "${file}"
		
		# rasterize and subtly degrade quality
		outfile=4.pdf
		convert -density 95 "${file}" -quality 95 $outfile

		echo -e "Conversion to ${outfile} completed.\n"

	else
		echo -e "Warning: Cannot convert $file, not of type pdf\n"
		numerrors=`expr 1 + $numerrors`
	fi

done

exit $numerrors
