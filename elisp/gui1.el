;;Initial
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;Modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;;Font
(set-face-attribute 'default nil
                    :family "Iosevka SS09"
                    :height 120)

;;Theme

(use-package kaolin-themes
  :defer t
  :init

;;(load-theme 'kaolin-aurora t)) 
;;(load-theme 'kaolin-bubblegum t)) 
;;(load-theme 'kaolin-eclipse t))
;;(load-theme 'kaolin-galaxy t))
;;(load-theme 'kaolin-ocean t))
;;(load-theme 'kaolin-temple t))
(load-theme 'kaolin-valley-dark t))
;;(load-theme 'kaolin-valley-light t))

;;(use-package doom-themes
;;  :defer t
;;  :init
  
;;(load-theme 'doom-gruvbox t))
;;(load-theme 'doom-gruvbox-light t))

;;Number 
(use-package display-line-numbers
  :ensure nil
  :hook
  ((prog-mode yaml-mode systemd-mode) . display-line-numbers-mode))

(provide 'gui1)
