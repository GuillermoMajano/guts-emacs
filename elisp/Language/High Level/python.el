   (use-package python-mode
     :ensure t
       :defer t
        :hook (python-mode . lsp-deferred)
        :custom
     (python-shell-interpreter "python3"))

  (setq python-shell-interpreter "python3")
