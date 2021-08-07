;;; interactive-scripts.el -*- lexical-binding: t; -*-

(defun insert-minted (code)
  (interactive "sLenguaje a pegar: ")
  (insert "#+latex: \\begin{code}")
  (insert "\n#+begin_src " code)
  (insert "\n#+end_src\n")
  (insert "#+latex: \\end{code}\n")
  (backward-char 2))

(defun create-ssh-conf ()
  (interactive)
  (insert "((nil . (\n")
  (insert "          (ssh-deploy-root-local . \"" (file-name-directory (buffer-file-name))  "\")\n")
  (insert "          (ssh-deploy-root-remote . \"/ssh:user@localhost:/home/user/html/\")\n")
  (insert "          (ssh-deploy-on-explicit-save . 1)\n")
  (insert "          (ssh-deploy-force-on-explicit-save . 1)\n")
  (insert "          )))")
  )
