#! /bin/sh

for infileBasename in ALogComponents ALogUsersLayout
do
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH  -dQUIET -sOutputFile=${infileBasename}_smallfile.pdf $infileBasename.pdf
	convert ${infileBasename}_smallfile.pdf -compress Zip -background white -flatten ${infileBasename}.png
done
