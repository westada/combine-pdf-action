#!/bin/sh -l

cd "$1"
pdfunite * combined.pdf
echo "::set-output result=$1/combined.pdf"
