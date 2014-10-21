#!/bin/bash

echo "Welcome to the LaTeX Package 'existence check' script."
sleep 1s
echo "What package do you want me to find?"
read PACK
cd /usr/share/texlive/texmf-dist/tex/latex/
if [ -d $PACK ]
then echo "Yes, it's there." && exit
else echo "No, it isn't there. Would you like me to list the packages?" && read DESC 
fi

if [ DESC ] 
then ls /usr/share/texlive/texmf-dist/tex/latex
else echo "Ok, I won't do anything."
fi

