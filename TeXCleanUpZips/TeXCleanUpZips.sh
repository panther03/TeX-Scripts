#!/bin/bash	

echo "Welcome to the LaTeX zip clean-up magician."
sleep 2s
echo "Cleaning up the packages..."
cd /usr/share/texlive/texmf-dist/tex/latex
sudo rm -rf *.zip
sleep 2s 
echo "Abracadabra!"
sleep 2s
echo "Done. It's cleaned up."
