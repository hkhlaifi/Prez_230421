#!/bin/sh

for i in *pdf
do

j=`echo $i|sed -e 's/.pdf//'`

echo $j


echo pdfcrop $i ${j}_crop.pdf

pdfcrop $i ${j}_crop.pdf
#pdfcrop "ACIVS_ACIVS_DESKTOP_SYN"$B".pdf" "ACIVS_ACIVS_DESKTOP_SYN"$B"_crop.pdf"



done 