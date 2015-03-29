(add-to-list 'load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")
;;(add-to-list
;; 'custom-theme-load-path"~/.emacs.d/vendor/emacs-color-theme-solarized")
;;(load-theme 'solarized t)

;;(set-frame-parameter nil 'background-mode 'dark)
(require 'solarized-theme)

;; make the fringe stand out from the background
;;(setq solarized-distinct-fringe-background t)

;; make the modeline high contrast
;;(setq solarized-high-contrast-mode-line t)

;; Use less bolding
;;(setq solarized-use-less-bold t)

;; Use more italics
;;(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar.
;;(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
;;(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
;;(setq solarized-height-minus-1 1)
;;(setq solarized-height-plus-1 1)
;;(setq solarized-height-plus-2 1)
;;(setq solarized-height-plus-3 1)
;;(setq solarized-height-plus-4 1)


;;(load-theme 'solarized-dark t)
;;(load-theme 'solarized-light t)
;;(load-theme 'solarized t)
;;(set-frame-parameter nil 'background-mode 'dark)

;;(add-hook 'after-make-frame-functions
;;          (lambda (frame)
;;            (set-frame-parameter frame
;;                                 'background-mode
;;                                 (if (display-graphic-p frame) 'light 'dark))
;;            (enable-theme 'solarized)))

;;(set-frame-parameter nil 'background-mode 'dark)
;;   (when (not (display-graphic-p (selected-frame)))
;;      (set-terminal-parameter (frame-terminal frame) 'background-mode 'dark))
;;   (enable-theme 'solarized)
;;
;; Globally map C-c t to a light/dark theme switcher
;; Also pull-in graphene for better fonts

;; (custom-set-variables '(solarized-termcolors 256))

(setq solarized-default-background-mode 'dark)

(load-theme 'solarized t)

(defun set-background-mode (frame mode)
  (set-frame-parameter frame 'background-mode mode)
  (when (not (display-graphic-p frame))
    (set-terminal-parameter (frame-terminal frame) 'background-mode mode))
  (enable-theme 'solarized))

(defun switch-theme ()
  (interactive)
  (let ((mode  (if (eq (frame-parameter nil 'background-mode) 'dark)
                   'light 'dark)))
    (set-background-mode nil mode)))

(add-hook 'after-make-frame-functions
          (lambda (frame) (set-background-mode frame solarized-default-background-mode)))

(set-background-mode nil solarized-default-background-mode)

(global-set-key (kbd "C-c t") 'switch-theme)

;;(require 'graphene)
