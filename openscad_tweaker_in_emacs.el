;; If you untick the "Bring window to front after automatic reload" in Advanced
;; you can increase and decrease number at cursor point with <F8> and <F7> buttons.
;; Thus you adjust things realtime on screen like in real CAD-program.

(defun increment-number-at-point ()
      (interactive)
      (skip-chars-backward "-0123456789")
      (or (looking-at "-?[0-9]+")
          (error "No number at point"))
      (replace-match (number-to-string (1+ (string-to-number (match-string 0)))))
      (save-buffer))

(defun decrement-number-at-point ()
      (interactive)
      (skip-chars-backward "-0123456789")
      (or (looking-at "-?[0-9]+")
          (error "No number at point"))
      (replace-match (number-to-string (1- (string-to-number (match-string 0)))))
      (save-buffer))

(global-set-key (kbd "<f8>") 'increment-number-at-point)
(global-set-key (kbd "<f7>") 'decrement-number-at-point)

