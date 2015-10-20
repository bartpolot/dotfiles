; Scroll by one line
(setq scroll-step 1)
(setq scroll-conservatively 10000)

; Sometimes up/down register as M-[ a,b
; Scroll by one
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))
(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))
(global-set-key (kbd "M-[ b")  'gcm-scroll-down)
(global-set-key (kbd "M-[ a")  'gcm-scroll-up)
