(defun my-c-mode-hook ()
  ;; Use GNU style as base
  (setq c-default-style "gnu")
  
  ;; double indent multi line assignments
  (c-set-offset 'statement-cont '++)

  ;; don't indent braces after if/for/while
  (c-set-offset 'substatement-open '0)

  ;; if arglist starts in a new line, indent it to the start
  ;; since this means the function name is already very long
  (c-set-offset 'arglist-intro '++))

(add-hook 'c-mode-hook 'my-c-mode-hook)
