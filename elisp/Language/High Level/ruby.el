    (use-package robe 
      :ensure t
      :after company
      :config (add-to-list 'company-backends 'company-robe)
	    (add-hook 'ruby-mode-hook 'robe-mode))
