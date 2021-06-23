(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

(dolist (mode '(treemacs-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
