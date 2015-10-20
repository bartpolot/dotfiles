; COMPlete ANYthing
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


(require 'color)

(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   `(company-tooltip ((t (:inherit default :background ,"black"))))
   `(company-scrollbar-bg ((t (:background ,"black"))))
   `(company-scrollbar-fg ((t (:background ,"lightgrey"))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))
