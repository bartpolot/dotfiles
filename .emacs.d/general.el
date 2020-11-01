;; Activate I DO mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Use ibuffer mode for buffer list
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Show column number beside line number
(column-number-mode 1)

;; Show matching parenthesis
(show-paren-mode 1)

;; Save sessions
;(desktop-save-mode 1)

(setq-default indicate-empty-lines t)
