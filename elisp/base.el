(require 'package)

  (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
               ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (require 'use-package)
  (setq use-package-always-ensure t)

(use-package flycheck)
(setq backup-directory-alist `(("." . "~/.saves")))

(use-package ivy
  :bind
  ("C-x s" . swiper)
  ("C-x C-r" . ivy-resume)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers nil)
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-x c k" . counsel-yank-pop))

(provide 'base)
