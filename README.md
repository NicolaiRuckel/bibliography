# Bibliography

This is my bibliography repository for LaTeX documents. It should be included
this way:

```latex
\usepackage{cite}

 [...]

\begin{document}

 [...]

\IfFileExists{$PATH_TO_THIS_REPOSITORY/bib.bib}
{\bibliography{$PATH_TO_THIS_REPOSITORY/bib}\bibliographystyle{plain}}
{\input{main-bib.tex}}
```

As soon as others want to compile the document, copy the `.bbl` file, produced
by BibTex to the directory of the `main.tex` and rename it to `main-bib.tex`.
