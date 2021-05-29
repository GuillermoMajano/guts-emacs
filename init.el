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
(require 'autocomplete)

;;Company-lsp
(require 'company-lsp)
(push 'company-lsp company-backends) 

