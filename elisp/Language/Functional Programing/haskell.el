     (use-package haskell-mode
	    :hook (haskell-mode . #'lsp-deferred)
	    :hook (haskell-literate-mode . #'lsp-deferred))
	  (use-package lsp-haskell)
	  ;; loading and unloading is slow, so just disabling
	  (with-eval-after-load "flycheck"
	    (add-to-list 'flycheck-disabled-checkers 'haskell-stack-ghc))
