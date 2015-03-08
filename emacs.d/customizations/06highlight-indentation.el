;;Appearance of guidelines is customizable by changing the face ;;highlight-indentation-face and highlight-indentation-current-column-face.

(require 'highlight-indentation)

;;Example, colors from screenshot:
(set-face-background 'highlight-indentation-face "#000000")
(set-face-background 'highlight-indentation-current-column-face "#000000")

(add-hook 'enh-ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

(add-hook 'coffee-mode-hook
                     (lambda () (highlight-indentation-current-column-mode)))
