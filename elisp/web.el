;;JavaScript
(use-package js2-mode
  :mode "\\.js\\'"
  :hook (js2-mode . lsp-deferred))

;;CSS
(use-package css-mode 
  :hook (css-mode . lsp-deferred))

;;HTML
(use-package web-mode
  :hook (html-mode . lsp-deferred))

(provide 'web.el)
