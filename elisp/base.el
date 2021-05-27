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

(provide 'base)
