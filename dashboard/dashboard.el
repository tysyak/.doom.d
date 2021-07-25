;;; dashboard/dashboard.el -*- lexical-binding: t; -*-

(setq +doom-dashboard-menu-sections
      '(("Recupera la última sesión"
         :icon (all-the-icons-octicon "history" :face 'doom-dashboard-menu-title)
         :when (cond ((require 'persp-mode nil t)
                      (file-exists-p (expand-file-name persp-auto-save-fname persp-save-dir)))
                     ((require 'desktop nil t)
                      (file-exists-p (desktop-full-file-name))))
         :face (:inherit (doom-dashboard-menu-title bold))
         :action doom/quickload-session)
        ("Abrir org-roam Diario"
         :icon (all-the-icons-octicon "squirrel" :face 'doom-dashboard-menu-title)
         :when (fboundp 'org-roam-dailies-find-today)
         :action org-roam-dailies-today)
        ("Abrir org-agenda"
         :icon (all-the-icons-octicon "calendar" :face 'doom-dashboard-menu-title)
         :when (fboundp 'org-agenda)
         :action org-agenda)
        ("Archivos recientemente abiertos"
         :icon (all-the-icons-octicon "file-text" :face 'doom-dashboard-menu-title)
         :action recentf-open-files)
        ("Abrir Proyecto"
         :icon (all-the-icons-octicon "briefcase" :face 'doom-dashboard-menu-title)
         :action projectile-switch-project);cogs
        ("Ir al marcador"
         :icon (all-the-icons-octicon "bookmark" :face 'doom-dashboard-menu-title)
         :action bookmark-jump)
        ("Archivos de configuración privados"
         :icon (all-the-icons-octicon "gear" :face 'doom-dashboard-menu-title)
         :action doom/open-private-config)
        ("Documentación abierta"
         :icon (all-the-icons-octicon "book" :face 'doom-dashboard-menu-title)
         :action doom/help)))
(setq +doom-dashboard-name "* Menu de Emacs Doom *")
(setq +doom-dashboard-banner-dir "~/.doom.d/dashboard"
      +doom-dashboard-banner-file "doom_emacs.png")

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq backup-directory-alist `(("." . "~/.saves")))
