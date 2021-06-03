
(use-package web-mode
	   :mode ("\\.html\\'" . web-mode)
	   :mode ("\\.xhtml\\'" . web-mode)
	   :mode ("\\.css\\'" . css-mode)
	   :mode ("\\.scss\\'" . scss-mode))

	  (setq web-mode-enable-current-column-highlight t)
	  (setq web-mode-enable-current-element-highlight t)

	  (defun my-web-mode-hook ()
       (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files)))

     (add-hook 'web-mode-hook  'emmet-mode) 
