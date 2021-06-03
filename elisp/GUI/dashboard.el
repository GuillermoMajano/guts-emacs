 (use-package dashboard
  :config
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-center-content nil)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-startup-banner "~/.emacs.d/logo/logo.png")
  (setq dashboard-banner-logo-title "In memory of a great, Kentarō Miura"))
  (dashboard-setup-startup-hook)
