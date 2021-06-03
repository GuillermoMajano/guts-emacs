
  (use-package vue-mode
  :mode "\\.vue\\'"
   :config
    (add-hook 'vue-mode-hook #'lsp))
