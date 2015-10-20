;; Try to move direction, which is supplied as arg
;; If cannot move that direction, send a tmux command to do appropriate move
(defun windmove-emacs-or-tmux(dir tmux-cmd)
  (interactive)
  (if (ignore-errors (funcall (intern (concat "windmove-" dir))))
      nil                       ;; Moving within emacs
    (shell-command tmux-cmd)) ;; At edges, send command to tmux
  )

;; Move between windows and panes with custom keybindings
(global-set-key (kbd "M-k")
		'(lambda () (interactive) (windmove-emacs-or-tmux "up"    "tmux-switch -U")))
(global-set-key (kbd "M-j")
		'(lambda () (interactive) (windmove-emacs-or-tmux "down"  "tmux-switch -D")))
(global-set-key (kbd "M-l")
		'(lambda () (interactive) (windmove-emacs-or-tmux "right" "tmux-switch -R")))
(global-set-key (kbd "M-h")
                '(lambda () (interactive) (windmove-emacs-or-tmux "left"  "tmux-switch -L")))


;; ADD THE FOLLOWING LINES TO YOUR ~/.tmux.conf
;;
;; # Move around panes Alt-h/j/k/l, or emacs windows if it's running
;; bind -n M-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq emacs && tmux send-keys M-h || tmux select-pane -L) || tmux display-message 'no pane to the left'"
;; bind -n M-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq emacs && tmux send-keys M-l || tmux select-pane -R) || tmux display-message 'no pane to the right'"
;; bind -n M-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq emacs && tmux send-keys M-k || tmux select-pane -U) || tmux display-message 'no pane up'"
;; bind -n M-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq emacs && tmux send-keys M-j || tmux select-pane -D) || tmux display-message 'no pane down'"
;; OPTIONALLY USE tmux-switch INSTEAD OF tmux select-pane -X FOR BLINKING THE NEW PANE ONCE
