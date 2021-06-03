
  (use-package treemacs
    :ensure t
    :bind
    (:map global-map
	  ([f8] . treemacs-select-window)
	  ("C-<f8>" . treemacs))
    :config
    (setq treemacs-is-never-other-window t))

  (use-package treemacs-projectile
    :after treemacs projectile
    :ensure t)

  (use-package treemacs-all-the-icons
    :ensure t)

  (treemacs-load-theme "all-the-icons")
  (setq doom-themes-treemacs-theme "doom-colors")

(dolist (mode '(treemacs-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
