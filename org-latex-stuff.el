;;; org-latex-stuff.el -*- lexical-binding: t; -*-


(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("IEEEtran"
                 "\\documentclass{IEEEtran}
\\usepackage[left=1.5cm,right=1.5cm,letterpaper]{geometry}
\\usepackage[spanish,es-nodecimaldot,es-tabla]{babel}
\\usepackage[utf8]{inputenc}
\\usepackage{blindtext}
\\usepackage{subfigure}
\\usepackage[most]{tcolorbox}
\\usepackage{etoolbox}
\\usepackage{minted}
\\usepackage{hyperref}
\\usepackage{xcolor}
\\definecolor{LightGray}{gray}{0.9}
\\definecolor{DarkGray}{HTML}{191919}
\\definecolor{custom}{HTML}{FFFFFF}
\\usepackage{caption}
\\usemintedstyle{emacs}
\\usepackage[ruled,vlined]{algorithm2e}
\\newenvironment{code}{\\captionsetup{type=listing}}{}
\\setminted{frame=lines,breaklines=true,fontsize=\\scriptsize,autogobble}
\\renewcommand{\\listingscaption}{Código}
\\renewcommand\\listoflistingscaption{Índice de \\listingscaption\\@s}
\\BeforeBeginEnvironment{minted}{\\begin{code}}
\\AfterEndEnvironment{minted}{\\end{code}}
[NO-DEFAULT-PACKAGES]
[EXTRA]
"
                 ("\\section{%s}" . "\\section{%s}")
                 ("\\subsection{%s}" . "\\subsection{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection{%s}")
                 ("\\paragraph{%s}" . "\\paragraph{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph{%s}")))
  )

(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("koma-script"
                 "\\documentclass{scrartcl}
\\usepackage[left=1.5cm,right=1.5cm,letterpaper]{geometry}
\\usepackage[spanish,es-nodecimaldot,es-tabla]{babel}
\\usepackage[utf8]{inputenc}
\\usepackage{blindtext}
\\usepackage{multicol}
\\usepackage{subfigure}
\\usepackage[most]{tcolorbox}
\\usepackage{etoolbox}
\\usepackage{minted}
\\usepackage{hyperref}
\\usepackage{xcolor}
\\definecolor{LightGray}{gray}{0.9}
\\definecolor{DarkGray}{HTML}{191919}
\\definecolor{custom}{HTML}{FFFFFF}
\\usepackage{caption}
\\usepackage{breqn}
\\usemintedstyle{emacs}
\\usepackage[ruled,vlined]{algorithm2e}
\\newenvironment{code}{\\captionsetup{type=listing}}{}
\\setminted{frame=lines,breaklines=true,bgcolor=custom,fontsize=\\scriptsize}
\\renewcommand{\\listingscaption}{Código}
\\renewcommand\\listoflistingscaption{Índice de \\listingscaption\\@s}
\\BeforeBeginEnvironment{listing}{\\begin{code}}
\\AfterEndEnvironment{listing}{\\end{code}}
\\BeforeBeginEnvironment{minted}{\\begin{code}}
\\AfterEndEnvironment{minted}{\\end{code}}
[NO-DEFAULT-PACKAGES]
[EXTRA]"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
               )
  )

(with-eval-after-load 'ox-latex
  (setq org-export-latex-listings 'minted)
  (add-to-list 'org-export-latex-packages-alist '("" "minted"))
  )
