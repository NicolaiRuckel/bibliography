# Bibliography

## Usage

This repository has to be in `$TEXMFHOME/bibtex/bib/`.

This is my bibliography repository for LaTeX documents. It should be included
this way:

```latex
\usepackage{cite}

 [...]

\begin{document}

 [...]


\IfFileExists{./main-lit.tex}
{\input{main-lit.tex}}
{\bibliography{$BIBNAME}\bibliographystyle{plain}}
```

As soon as others want to compile the document, copy the `.bbl` file, produced
by BibTex to the directory of the `main.tex` and rename it to `main-lit.tex`.

## Formatting

The files should always be formatted with the `format.sh` script after adding new
items.
