#!/bin/bash
echo "Welcome to the LaTeX package fetcher."
sleep 2s
echo "What is this .zip package called?"
read PACK
cd /usr/share/texlive/texmf-dist/tex/latex 
if [ -d $PACK ];
	then echo "Package already resides on the system." && exit
	else sudo wget ftp://mirrors.ucr.ac.cr/CTAN/macros/latex/contrib/$PACK.zip
fi
sudo unzip $PACK.zip
cd $PACK
if [ -f $PACK.sty ];
        then sudo texhash
        else sudo pdflatex $PACK.ins && sudo texhash
fi

