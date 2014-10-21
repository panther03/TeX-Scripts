#!/bin/bash
echo "Welcome to the LaTeX package remover."
sleep 2s
echo "What is this package called?"
read PACK
cd /usr/share/texlive/texmf-dist/tex/latex
sudo rm -rf $PACK
sudo texhash
