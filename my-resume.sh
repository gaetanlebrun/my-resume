#!/usr/bin/env bash
RESUME_PREFIX=Gaetan-Le-Brun
PDF_FILTER=${RESUME_PREFIX}*.pdf
TEX_FILTER=${RESUME_PREFIX}*.tex
ALL_FILTER=${RESUME_PREFIX}*.*

# clean up before pdflatex execution
find . -name "$ALL_FILTER" ! -name "$TEX_FILTER" -delete

# pdflatex execution
for texFile in ${TEX_FILTER}
do
    pdflatex $texFile && pdflatex $texFile
done

# clean up
find . -name "$ALL_FILTER" ! -name "$TEX_FILTER" ! -name "$PDF_FILTER" -delete