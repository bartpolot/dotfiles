(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("\\.php[345]?\\'" . php-mode)) auto-mode-alist))

(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("\\.py\\'" . python-mode)) auto-mode-alist))
