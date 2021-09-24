
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elcord-editor-icon "emacs_material_icon")
 '(package-selected-packages
   '(nov perspective persp-projectile eglot xref yasnippet x509-mode go-mode spaceline-all-the-icons all-the-icons-ivy-rich doom-themes use-package treemacs-projectile treemacs-all-the-icons kaolin-themes flycheck dashboard counsel company centaur-tabs))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; what to use when checking on-save. "check" is default, I prefer clippy

;;lsp-ui
(use-package lsp-ui
     :ensure
     :commands lsp-ui-mode
     :custom
     (lsp-ui-peek-always-show t)
     (lsp-ui-sideline-show-hover t)
     (lsp-ui-doc-enable nil))

;;ini
(setq lsp-gopls-server-path "~/go/bin/gopls")
;;end

(use-package yasnippet
    :ensure
    :config
    (yas-reload-all)
    (add-hook 'prog-mode-hook 'yas-minor-mode)
    (add-hook 'text-mode-hook 'yas-minor-mode))

;;nov.el
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Liberation Serif"
                                           :height 1.3))
(add-hook 'nov-mode-hook 'my-nov-font-setup)

(setq nov-text-width 80)
(setq nov-text-width t)
(setq visual-fill-column-center-text t)
(add-hook 'nov-mode-hook 'visual-line-mode)
(add-hook 'nov-mode-hook 'visual-fill-column-mode)
;;end nov.el

;;projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;end projectile

;; LSP y LSP-UI modos
 (use-package lsp-mode
    :ensure
    :commands lsp
    :custom
    ;; what to use when checking on-save. "check" is default, I prefer clippy
    (lsp-rust-analyzer-cargo-watch-command "clippy")
    (lsp-eldoc-render-all t)
    (lsp-idle-delay 0.6)
    (lsp-rust-analyzer-server-display-inlay-hints t)
    :config
    (add-hook 'lsp-mode-hook 'lsp-ui-mode))
;;end sruts

;;centaur-tabs
(defun the-bottom-terminal ()
  "Pop to a `eshell' buffer at the bottom frame.

Open a new `eshell' buffer if necessary."
  (interactive)
  (let ((term (get-buffer "*eshell*")))
    (unless term
      (save-window-excursion (eshell)))
    (pop-to-buffer "*eshell*" '((display-buffer-at-bottom)))
    (when (fboundp 'centaur-tabs-local-mode)
      (centaur-tabs-local-mode 1))
    (set-window-text-height (get-buffer-window "*eshell*") 12)))

(defun the-bottom-terminal-toggle ()
  "Toggle the bottom terminal created by `the-bottom-terminal'."
  (interactive)
  (if (string= "*eshell*" (buffer-name (current-buffer)))
      (delete-window (selected-window))
    (the-bottom-terminal)))
;;center end  

					; Company mode
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)



(setenv "PATH" 
    (concat 
        (getenv "PATH") 
        ":~/go/bin/gopls"
    )
)

