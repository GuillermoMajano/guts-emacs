(provide 'php)

(use-package php-mode
 :ensure t
 :mode
 (“\\.php\\’” . php-mode))

(add-to-list ‘auto-mode-alist ‘(“\\.php$” . php-mode))

(use-package phpunit
 :ensure t)
