  (use-package lsp-mode
    :defer t
    :commands (lsp lsp-deferred)
    :init
    (setq lsp-keymap-prefix "C-c l")
    :hook ((html-mode . lsp)
         (css-mode . lsp))
    :config
    (lsp-enable-which-key-integration t))
