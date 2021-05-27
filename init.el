(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;;Principal
(require 'base)
(require 'movement)

;;Keybinds

;;Vim
;;(require 'vim)

;;GUI

(require 'gui1)
(require 'gui2)

;;Uses
(require 'lsp-company-ivy)

;;Language

;;Functional Programing 
;;(require 'haskell) ;;HASKELL

;;Web
(require 'web) ;;HTML/CSS/JS


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(evil web-mode use-package treemacs-projectile treemacs-all-the-icons lsp-haskell js2-mode doom-themes doom-modeline dashboard company centaur-tabs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
