  (use-package go-mode
   :mode "\\.go\\'"
   :config
    (add-hook 'go-mode-hook #'lsp))
