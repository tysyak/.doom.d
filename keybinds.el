;;; keybinds.el -*- lexical-binding: t; -*-


;; For multiplecursor  --- ---
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
;; --- --- --- --- --- --- ---

;; For Latex enviorement - ---
(defun TeX-italic()
  (interactive)
  (TeX-font nil ?\C-i))

(defun TeX-bold()
  (interactive)
  (TeX-font nil ?\C-b))

(defun TeX-typewriter()
  (interactive)
  (TeX-font nil ?\C-t))

(defun TeX-emphasis()
  (interactive)
  (TeX-font nil ?\C-e))

(defun TeX-smallcaps()
  (interactive)
  (TeX-font nil ?\C-c))

(defun latex-font-hook ()
  (local-set-key "\C-ci" 'TeX-italic)
  (local-set-key "\C-cb" 'TeX-bold)
  (local-set-key "\C-ct" 'TeX-typewriter)
  (local-set-key "\C-ce" 'TeX-emphasis)
  (local-set-key "\C-cs" 'TeX-smallcaps))

(defun insert-minted ()
  (interactive)
  (insert "#+latex: \\begin{code}\n")
  (insert "#+begin_src\n")
  (insert "#+end_src\n")
  (insert "#+latex: \\end{code}\n")
  (backward-char 2))


(add-hook 'LaTeX-mode-hook 'latex-font-hook)
;; --- --- --- --- --- --- ---

;; For toogle transparency ---
(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(93 . 50) '(100 . 100)))))
;; --- --- --- --- --- --- ---
