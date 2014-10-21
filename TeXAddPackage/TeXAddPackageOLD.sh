#!/bin/bash
echo "Welcome to the LaTeX package adder."
sleep 2s
echo "Where is this .zip package located?"
read DIR
sleep 2s
echo "What is this .zip package called?"
read PACZIP
cd /usr/share/texlive/texmf-dist/tex/latex
if [ -d $PACZIP ];
	then echo "Package already resides on the system." && exit
	else sudo cp $DIR/$PACZIP.zip /usr/share/texlive/texmf-dist/tex/latex
fi
sudo unzip $PACZIP.zip
cd $PACZIP
if [ -f $PACZIP.sty ];
	then sudo texhash
	else sudo pdflatex $PACZIP.ins && sudo texhash
fi

