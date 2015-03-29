(require 'cl)
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(smartparens-global-mode 1)

;;;You can enable Projectile globally like this:
(projectile-global-mode)
;;;To enable Projectile only in select modes:
;;;(add-hook 'ruby-mode-hook 'projectile-mode)

(add-to-list 'load-path "~/.emacs.d/customizations")
;;(add-to-list 'load-path "~/.emacs.d/other_paths)

(load "00common-setup.el")
(load "01powerline-setup.el")
(load "02auto-complete.el")
(load "03flx-ido.el")
(load "04smartparens.el")
(load "05projectile.el")
(load "06highlight-indentation.el")
(load "07yasnippet.el")
(load "08solarized.el")
(load "09markdown-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(default-frame-alist
    (quote
     ((cursor-color . "red")
      (vertical-scroll-bars)
      (height . 50)
      (width . 90))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
