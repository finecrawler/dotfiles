(require 'cl)
(require 'cask "/Users/declan/.cask/cask.el")
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

