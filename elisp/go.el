;; -*- no-byte-compile: t; -*-
;;
;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
"
setup

export GOPATH=$HOME/goprojects

go get -u github.com/nsf/gocode
go get golang.org/x/tools/cmd/guru
go get -u github.com/motemen/gore
go get golang.org/x/tools/cmd/goimports
go get github.com/rogpeppe/godef
go get golang.org/x/tools/cmd/gorename

https://github.com/dominikh/yasnippet-go

"
;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

(use-package go-mode
  :ensure
  :config
  (add-hook 'go-mode-hook 'rk/go-hook))

(use-package company-go
  :ensure)

(use-package go-eldoc
  :ensure)

(use-package go-guru
  :ensure)

(use-package go-rename
  :ensure)

(use-package gorepl-mode
  :ensure)


(defun rk/go-hook ()
  ;; (defalias 'go-play-buffer nil)
  ;; (defalias 'go-play-region nil)

  (go-guru-hl-identifier-mode)

  (setq company-go-show-annotation 1)
  (setq gofmt-command "goimports")
  (set (make-local-variable 'company-backends) '(company-go))

  (subword-mode 1)
  ;; (yas-minor-mode 1)
  ;; (font-lock-mode 1)
  (eldoc-mode 1)
  (flycheck-mode 1)
  (go-eldoc-setup)

  (define-key go-mode-map (kbd "M-.") 'godef-jump)
  (define-key go-mode-map (kbd "C-c C-r") 'go-rename)
  (define-key go-mode-map (kbd "C-c C-c") 'rk/go-run-this-file)
  ;; (define-key go-mode-map (kbd "C-c C-c") 'go-run-all-tests)
  ;; (define-key go-mode-map (kbd "C-c C-m") 'go-run-this-test)
  (define-key go-mode-map (kbd "C-c C-v") 'go-build-this)
  ;; (define-key go-mode-map (kbd "C-c C-l") 'go-tests-toggle-truncate-lines)
  ;; (define-key go-mode-map (kbd "C-c C-t") 'go-goto-first-error)
  ;; (define-key go-mode-map (kbd "C-c C-n") 'go-goto-next-error)
  ;; (define-key go-mode-map (kbd "C-c C-p") 'go-goto-previous-error)
  ;; (define-key go-mode-map (kbd "C-c C-e") 'go-play)
  (define-key go-mode-map (kbd "M-?") 'go-guru-referrers)

  (add-hook 'before-save-hook #'gofmt-before-save)
  ;; (add-hook 'after-save-hook #'go-after-save-run-tests)

  )

(defun rk/go-run-this-file ()
  "go run"
  (interactive)
  (recompile (format "go run %s" (buffer-file-name))))

(defun go-play ()
  (interactive)
  (let* ((temporary-file-directory (expand-file-name "tmp/" (getenv "GOPATH")))
         (temp-file (progn
                      (make-directory temporary-file-directory t)
                      (make-temp-file "go-play" nil ".go"))))
    (find-file temp-file)
    (insert "package main
import \"fmt\"
func main() {
	fmt.Printf(\"\")
}")
    (goto-char 55)
    (go-mode)
    (define-key (current-local-map) (kbd "C-c C-k")
      (lambda () (interactive) (save-buffer) (delete-file buffer-file-name) (kill-buffer)))
    (define-key (current-local-map) (kbd "C-c C-c")
      (lambda () (interactive) (save-buffer) (compile (format "go run %s" buffer-file-name))))))

;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

(provide 'init-go-public)
