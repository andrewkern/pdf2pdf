# pdf2pdf
This software performs the magical pdf-to-pdf conversion popular in academic journal submission sites.

New speedup in version 2. Still runs in O(1) time, but now ~15% faster! 
Version 2 now requires you compile the C++ code fast.c thusly:

`g++ fast.c -o fastpdf`.

Requires imagemagick. It can probably be installed like this: 
OSX: `brew install imagemagick`
ubuntu: `sudo apt-get install imagemagick`

## Usage
`bash pdf2pdf.sh pdf_filename1 pdf_filename2 ...`

The software first checks whether each file is actually a pdf file, and then converts the pdf files into pdf. It skips any files that are not pdf.

So, the following will convert all pdf files in the current folder:
`bash pdf2pdf.sh *`

## Output
Each listed pdf file will be converted to a lower-resolution pdf saved as "<RandomNumber>.pdf" in the current working directory.

