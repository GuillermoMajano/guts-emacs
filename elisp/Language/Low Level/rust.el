   (use-package rustic
    :mode ("\\.rs\\'" . rustic-mode)
    :hook (rustic-mode . lsp-deferred))
