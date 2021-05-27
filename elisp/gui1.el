(provide 'gui1)

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
                    :height 140)

;;Theme
(use-package doom-themes
  :defer t
  :init

  ;;Dark
(load-theme 'doom-gruvbox t))

  ;;Light
;;(load-theme 'doom-gruvbox-light t)) 

;;Number 
(use-package display-line-numbers
  :ensure nil
  :hook
  ((prog-mode yaml-mode systemd-mode) . display-line-numbers-mode))

