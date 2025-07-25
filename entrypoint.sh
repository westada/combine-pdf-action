#!/bin/sh -l

cd "$INPUT_PATH"
pdfunite * $INPUT_FILENAME
echo "::set-output result=$INPUT_PATH/$INPUT_FILENAME"
