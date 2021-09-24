 (use-package dashboard
  :config
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-center-content nil)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-startup-banner "~/.emacs.d/logo/gust_logo.png")
  (setq dashboard-banner-logo-title "Falling Moon"))
  (dashboard-setup-startup-hook)
