;;; x509-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "x509-mode" "x509-mode.el" (0 0 0 0))
;;; Generated autoloads from x509-mode.el

(autoload 'x509-mode "x509-mode" "\
Major mode for displaying openssl x509 output.

\\{x509-mode-map}

\(fn)" t nil)

(autoload 'x509-viewcert "x509-mode" "\
Parse current buffer as a certificate file.
ARGS are arguments to the openssl command.  Display result in
another buffer.

With \\[universal-argument] prefix, you can edit the command arguements.

\(fn &optional ARGS)" t nil)

(autoload 'x509-viewcrl "x509-mode" "\
Parse current buffer as a CRL file.
ARGS are arguments to the openssl command.  Display result in
another buffer.

With \\[universal-argument] prefix, you can edit the command arguements.

\(fn &optional ARGS)" t nil)

(autoload 'x509-viewdh "x509-mode" "\
Parse current buffer as a DH-parameter file.
ARGS are arguments to the openssl command.  Display result in
another buffer.

With \\[universal-argument] prefix, you can edit the command arguements.

\(fn &optional ARGS)" t nil)

(autoload 'x509-viewkey "x509-mode" "\
Display x509 private key using the OpenSSL pkey command.
ARGS are arguments to the openssl command.

With \\[universal-argument] prefix, you can edit the command arguements.
For example to enter pass-phrase, add -passin pass:PASSPHRASE.

\(fn &optional ARGS)" t nil)

(autoload 'x509-asn1-mode "x509-mode" "\
Major mode for displaying openssl asn1parse output.

\\{x509-mode-map}

\(fn)" t nil)

(autoload 'x509-viewasn1 "x509-mode" "\
Parse current buffer as ASN.1.
ARGS are arguments to the openssl command.  Display result in
another buffer.

With \\[universal-argument] prefix, you can edit the command arguements.

\(fn &optional ARGS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "x509-mode" '("x509-")))

;;;***

;;;### (autoloads nil nil ("x509-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; x509-mode-autoloads.el ends here
