;; Install required packages if not installed.
(mapc #'(lambda (package)
  (unless (package-installed-p package)
    (package-install package)))
      '(use-package)
)

(require 'use-package)

(use-package ox-moderncv
    :load-path "~/org/org-cv/"
    :init (require 'ox-moderncv))
