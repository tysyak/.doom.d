;;; org-latex-stuff.el -*- lexical-binding: t; -*-

(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("IEEEtran"
                 "\\documentclass{IEEEtran}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  )
(with-eval-after-load 'ox-latex
  (setq org-export-latex-listings 'minted)
  (add-to-list 'org-export-latex-packages-alist '("" "minted"))
  )
