(use-package js2-mode
  :mode "\\.js\\'"
  :hook (js2-mode . lsp-deferred))

(provide 'js)
