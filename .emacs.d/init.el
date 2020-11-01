
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; General
(load-user-file "general.el")
(load-user-file "scroll.el")
(load-user-file "melpa.el")
(load-user-file "tmux.el")

;; Themes
(load-user-file "powerline.el") ;; Install with M-x package-list-packages
(load-user-file "load-themes.el")

;; C
;;(load-user-file "company.el")
(load-user-file "gtags.el")
(load-user-file "c-style.el")

;; Programming modes
(load-user-file "modes.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (bart)))
 '(custom-safe-themes
   (quote
    ("e0942d8dbf89b3304048ebf9ffc43d12c95e140c2f1720923334d6350c1ac9e9" default)))
 '(frame-background-mode (quote dark))
 '(ibuffer-formats
   (quote
    ((mark modified read-only " "
	   (name 40 40 :left :elide)
	   " "
	   (size 7 -1 :right)
	   " "
	   (mode 16 16 :left :elide)
	   " " filename-and-process)
     (mark " "
	   (name 16 -1)
	   " " filename))))
 '(ibuffer-saved-filter-groups
   (quote
    (("fg1"
      ("test"
       (name . ".*test.*"))
      ("service"
       (name . ".*service.*"))))))
 '(ibuffer-saved-filters
   (quote
    (("gnus"
      ((or
	(mode . message-mode)
	(mode . mail-mode)
	(mode . gnus-group-mode)
	(mode . gnus-summary-mode)
	(mode . gnus-article-mode))))
     ("programming"
      ((or
	(mode . emacs-lisp-mode)
	(mode . cperl-mode)
	(mode . c-mode)
	(mode . java-mode)
	(mode . idl-mode)
	(mode . lisp-mode)))))))
 '(show-paren-mode t)
 '(vc-follow-symlinks nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
