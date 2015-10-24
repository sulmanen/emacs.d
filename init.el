(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'color-theme-solarized)

(setq-default indent-tabs-mode nil)

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-to-list 'load-path "~/.emacs.d/lisps/")

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(setq emmet-move-cursor-between-quotes t) ;; default nil

;;(require 'expand-region)
;;(global-set-key (kbd "C-=") 'er/expand-region)
(add-to-list 'load-path "/Users/sulmanen/work/lib/ESS/lisp")
(load "ess-site")

(require 'ess-site)
