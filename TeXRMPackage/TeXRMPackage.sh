#!/bin/bash
echo "Welcome to the LaTeX package remover."
sleep 2s
echo "What is this package called?"
read PACK
cd /usr/share/texlive/texmf-dist/tex/latex
if [ -f $PACK ] 
then rm -rf $PACK
else echo "Not in /usr/share/texlive/texmf-dist/tex/latex"
fi

cd /usr/share/texmf/tex/latex
if [ -f $PACK ] then
then	rm -rf $PACK
else echo "Non in /usr/share/texmf/tex/latex"
fi

sudo texhash
