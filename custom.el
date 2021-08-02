(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   '(("" "%(PDF)%(latex) -shell-escape %(file-line-error) %(extraopts) %(output-dir) %S%(PDFout)")))
 '(TeX-view-program-list '(("xreader" "xreader --page-index=%(outpage) %o")))
 '(TeX-view-program-selection '((output-pdf "xreader")))
 '(org-latex-listings 'minted)
 '(confirm-kill-emacs nil)
 '(org-latex-pdf-process
   '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "bibtex %b" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
 '(TeX-view-program-list '(("xreader" "xreader --page-index=%(outpage) %o")))
 '(TeX-view-program-selection '((output-pdf "xreader")))
 '(package-selected-packages '(vcard org-vcard vala-mode nasm-mode ag))
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
