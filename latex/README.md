# latex

## install
```
brew cask install basictex
```

## hello world
```
mkdir ~/latex-helloworld
cd ~/latex-helloworld

cat > main.tex <<EOF
% The LaTeX is in here!
\documentclass{article}
\begin{document}
Hello World
\end{document}
EOF

pdflatex main.tex
open main.pdf
```

## references
1. <http://www.bilalakil.me/getting-started-and-productive-with-latex-basictex-on-os-x-terminal/>
1. <https://www.pydanny.com/setting-up-latex-on-mac-os-x.html>
