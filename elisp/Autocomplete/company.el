
  (add-hook 'after-init-hook 'global-company-mode)
  (use-package company
    :after lsp-mode
    ;; :hook (after-init-hook . global-company-mode)
    :config
    (company-tng-mode 0)
    :custom (company-minimum-prefix-length 2)
    :bind (:map company-active-map
		("<tab>" . company-complete-selection))
	  (:map lsp-mode-map
		("<tab>" . company-indent-or-complete-common)))


    (use-package company-anaconda 
      :defer
      :after company
      :config (add-to-list 'company-backends 'company-anaconda))
