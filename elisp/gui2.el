(provide 'gui2)

;;Dashboard
(use-package dashboard
  :config
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-center-content nil)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-startup-banner "~/.emacs.d/logo/logo.png")
  (setq dashboard-banner-logo-title "In memory of a great, Kentarō Miura")
  )
:config
  (dashboard-setup-startup-hook)

;;Tree
(use-package treemacs
  :ensure t
  :bind
  (:map global-map
	([f8] . treemacs-select-window)
	("C-<f8>" . treemacs))
  :config
  (setq treemacs-is-never-other-window t)
  )

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

(use-package treemacs-all-the-icons
  :ensure t)

(treemacs-load-theme "all-the-icons")
(setq doom-themes-treemacs-theme "doom-colors") 

;;Tabs(Better Tabs) only virgin uses Spaces, naah its a joke
(use-package centaur-tabs
   :ensure t
   :config 
   (setq  centaur-tabs-set-bar 'under
	   x-underline-at-descent-line t
          centaur-tabs-style "slant"
          centaur-tabs-set-icons t
          centaur-tabs-gray-out-icons 'buffer
          centaur-tabs-height 40
          centaur-tabs-set-modified-marker t
          centaur-tabs-modifier-marker "*")
       (centaur-tabs-mode t))
