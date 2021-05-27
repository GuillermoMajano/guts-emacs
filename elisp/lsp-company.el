(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind
  (:map company-active-map
  	("C-c z" . company-complete-selection))
  (:map lsp-mode-map
  	("C-c a" . company-indent-or-complete-common))
  :custom
  (company-idle-delay 0.0)
  (company-minimum-prefix-length 1))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (lsp-enable-which-key-integration t))

(provide 'lsp-company)
