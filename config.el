(require 'package)

    (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
		  ("org" . "https://orgmode.org/elpa/")
		 ("melpa" . "https://melpa.org/packages/")))

  (package-initialize)
    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))

    (require 'use-package)
    (setq use-package-always-ensure t)

  (setq backup-directory-alist `(("." . "~/.saves")))

  (setq skeleton-pair t)
  (global-set-key "[" 'skeleton-pair-insert-maybe)
  (global-set-key "(" 'skeleton-pair-insert-maybe)
  (global-set-key "{" 'skeleton-pair-insert-maybe)
  (global-set-key "'" 'skeleton-pair-insert-maybe)
  (global-set-key "\"" 'skeleton-pair-insert-maybe)
   (global-set-key "<" 'skeleton-pair-insert-maybe)

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(use-package counsel
    :bind
    ("M-x" . counsel-M-x)
    ("C-x C-m" . counsel-M-x)
    ("C-x C-f" . counsel-find-file)
    ("C-x c k" . counsel-yank-pop))

(use-package ivy
    :bind
    ("C-x s" . swiper)
    ("C-x C-r" . ivy-resume)
    :config
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers nil)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

(use-package which-key
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 1))

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(load-file "~/.emacs.d/elisp/LSP/lsp-mode.el")

(load-file "~/.emacs.d/elisp/LSP/lsp-treemacs.el")

(load-file "~/.emacs.d/elisp/LSP/lsp-ui.el")

(load-file "~/.emacs.d/elisp/Autocomplete/company.el")

(use-package flycheck
    :hook (lsp-deferred . flycheck-mode))

;;(load-file "~/.emacs.d/elisp/Language/Web/Frontend/typescript.el")

;;(load-file "~/.emacs.d/elisp/Language/Web/Frontend/javascript.el")

;;(load-file "~/.emacs.d/elisp/Language/Web/Frontend/vue.el")

;; (load-file "~/.emacs.d/elisp/Language/Web/Backend/php.el")

;; (load-file "~/.emacs.d/elisp/Language/Web/Backend/go.el")

;;(load-file "~/.emacs.d/elisp/Language/Low Level/c-c++.el")

;;(load-file "~/.emacs.d/elisp/Language/Low Level/rust.el")

;;(load-file "~/.emacs.d/elisp/Language/High Level/python.el")

;;(load-file "~/.emacs.d/elisp/Language/High Level/lua.el")

;;(load-file "~/.emacs.d/elisp/Language/High Level/ruby.el")

;;(load-file "~/.emacs.d/elisp/Language/Functional Programing/haskell.el")

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(load-file "~/.emacs.d/elisp/GUI/theme.el")

(load-file "~/.emacs.d/elisp/GUI/centaurtabs.el")

(load-file "~/.emacs.d/elisp/GUI/treemacs.el")

(load-file "~/.emacs.d/elisp/GUI/dashboard.el")

(load-file "~/.emacs.d/elisp/GUI/modeline.el")

(load-file "~/.emacs.d/elisp/GUI/font.el")

(load-file "~/.emacs.d/elisp/GUI/displaynumber.el")
