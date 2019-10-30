---
title: |
    | Focus:
    | A minimalist beamer theme
subtitle: my subtitle
author: Peter V Coveney
date: 2019-10-29
theme: focus
institute: |
    | Centre for Computational Science
    | University College London
    | `p.v.coveney@ucl.ac.uk`
toc-title: 'Contents'
# parallaxBackgroundImage: ./images/leaves_bg.jpg
pandocomatic_:
  use-template:
    - md_to_beamer_basic_pdf
    # - md_to_pptx_basic
    # - md_to_revealjs_with_Mathjax
  pandoc:
    incremental: true
    toc: true
    # toc-depth: 1
    slide-level: 3
    bibliography: ./demo_bibliography.bib
    # biblatex: true
    # biblio-style: numbered
    link-citations: true
    # suppress-bibliography: true
    # nocite: |
    #   @*
    csl: ./ieee.csl
    include-in-header: ./custom_header.tex 
    # filter:
    # - pandoc-beamer-block
    # csl: ./chicago-fullnote-bibliography.csl
    # css:
    # - reveal.js/css/theme/solarized.css
  # metadata:
  # pandoc-beamer-block:
  #   - classes: [info]
  #   - classes: [alert]
  #     type: alert
---

# Section 1

## Subsection 1.1
### Simple Frame

This is a simple frame.

### {.plain}

This is a frame with a plain style and it is numbered.

## Subsection 1.2

### {.t}
This frame has an empty title and is aligned to top.

### No frame numbering {.noframenumbering}

This frame is not numbered and is citing reference [@knuth74]

### Typesetting and Math
The packages `inputenc` and `FiraSans`[^1]^,^[^2]

[^1]: [`https://fonts.google.com/specimen/Fira+Sans`](https://fonts.google.com/specimen/Fira+Sans)
[^2]: [`http://mozilla.github.io/Fira/`](http://mozilla.github.io/Fira/)

\vfill
This theme provides styling commands to typeset *emphasized*, \alert{alerted}, **bold** , \textcolor{example}{example text}, \dots
\vfill
`FiraSans` also provides support for mathematical symbols:
$$
e^{i\pi} + 1 = 0.
$$

# Section 2

### Blocks

<!-- #### Block -->
<!-- Text. -->

\begin{block}{Alert block}
Text.
\end{block}

. . .

\begin{alertblock}{Alert block}
Alert \alert{text}.
\end{alertblock}

. . .

\begin{exampleblock}{Example block}
    Example \textcolor{example}{text}.
\end{exampleblock}

### Lists 

:::::::::::::: {.columns}
::: {.column width="33%"}
Items:

* Item 1 
  * Subitem 1.1
  * Subitem 1.2
* Item 2 
* Item 3 
:::
::: {.column width="33%"}
Enumerations:

* First
* Second
  * Sub-first
  * Sub-second
* Third
:::
::: {.column width="33%"}
Description:

First

:   Yes

Second

:   No
:::
::::::::::::::

-----------------------------

### Figures and tables

\begin{columns}
            \column{0.4\textwidth}
                \begin{figure}
                    \centering
                    \includegraphics{focuslogo.pdf}
                    \caption{Figure caption.}
                    \label{fig:focuslogo}
                \end{figure}
            \column{0.6\textwidth}
                \begin{table}
                    \centering
                    \begin{tabular}{rcc}
                         & Heading 1 & Heading 2 \\\hline
                        Row 1 & \(v_{11}\) & \(v_{12}\) \\
                        Row 2 & \(v_{21}\) & \(v_{22}\) \\
                        Row 3 & \(v_{31}\) & \(v_{32}\) \\
                    \end{tabular}
                    \caption{Table caption.}
                    \label{tab:demo}
                \end{table}
\end{columns}


### Hello [focus]

Thanks for using **Focus**!

-----------------------------

\appendix

### References

\setbeamercolor{normal text}{fg=white,bg=black}
<!-- \usebeamercolor[fg]{normal text} -->
This is a backup frame, useful to include additional material for questions from the audience.
\vfill
The package \texttt{appendixnumberbeamer} is used not to number appendix frames.


