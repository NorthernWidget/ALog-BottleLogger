#! /bin/sh

for infileBasename in ALogComponents ALogUsersLayout
do
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH  -dQUIET -sOutputFile=${infileBasename}_smallfile.pdf $infileBasename.pdf
	convert -units PixelsPerInch -density 300 -resize 50% -background white -flatten ${infileBasename}.pdf ${infileBasename}.png
done
