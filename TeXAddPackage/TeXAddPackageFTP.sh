#!/bin/bash
echo "Welcome to the LaTeX package fetcher."
sleep 2s
echo "What is this .zip package called?"
read PACK
if [ -d /usr/share/texlive/texmf-dist/tex/latex];
then cd /usr/share/texlive/texmf-dist/tex/latex 
else cd /usr/share/texmf-dist/tex/latex
fi

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

