(deftheme bart
  "Dark theme based on black and green.")

(global-hl-line-mode 1)

(set-background-color "0")
(set-foreground-color "0")

(custom-theme-set-variables
 'bart
 '(show-paren-mode t)
 '(frame-background-mode (quote dark)))

(custom-theme-set-faces
 'bart
 '(error ((t (:background "black" :foreground "red" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "cyan" :slant oblique))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine" :weight extra-bold))))
 '(font-lock-doc-face ((t (:foreground "green"))))
 '(font-lock-function-name-face ((t (:foreground "brightgreen" :weight extra-bold))))
 '(font-lock-keyword-face ((t (:foreground "brightblue" :weight extra-bold))))
 '(font-lock-string-face ((t (:foreground "yellow"))))
 '(font-lock-variable-name-face ((t (:foreground "brightcyan"))))
 '(highlight ((t (:background "color-238"))))
 '(minibuffer-prompt ((t (:foreground "brightcyan"))))
 '(show-paren-match ((t (:background "color-40" :foreground "color-22"))))
 '(show-paren-mismatch ((t (:background "red" :foreground "brightwhite")))))

(provide-theme 'bart)
