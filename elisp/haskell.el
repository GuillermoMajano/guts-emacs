(use-package lsp-haskell)
(use-package haskell-mode
  :mode "\\.hs\\"
  :hook (haskell-mode . lsp))

(provide 'haskell)
