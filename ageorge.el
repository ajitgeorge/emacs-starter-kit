(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 93 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(global-set-key [C-f9] 'compile)
;; (global-set-key [C-c C-/] 'comment-or-uncomment-region)

(add-to-list 'load-path "~/foss/go/misc/emacs" t)
(require 'go-mode-load)

;; scala-mode
; ageorge@wud-ageorge01:~/foss/scala-tool-support$ svn info
; Path: .
; URL: http://lampsvn.epfl.ch/svn-repos/scala/scala-tool-support/trunk
; Repository Root: http://lampsvn.epfl.ch/svn-repos/scala
; Repository UUID: 5e8d7ff9-d8ef-0310-90f0-a4852d11357a
; Revision: 25743
; Node Kind: directory
; Schedule: normal
; Last Changed Author: cunei
; Last Changed Rev: 24032
; Last Changed Date: 2011-01-20 09:32:51 -0600 (Thu, 20 Jan 2011)
;
(add-to-list 'load-path (concat (getenv "HOME") "/foss/scala-tool-support/src/emacs"))
(require 'scala-mode-auto)

;; key bindings for moving between buffers
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; A number of python-suitable config ripped from http://jasonmbaker.com/7-tools-for-working-with-python-in-emacs-and

; sudo apt-get install python-ropemacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;; anything
(require 'anything-config)
(require 'anything-match-plugin)
(global-set-key "\C-ca" 'anything)
(global-set-key "\C-ce" 'anything-for-files)

;; Flymake/pyflakes
(when (load "flymake" t)
 (defun flymake-pyflakes-init ()
 (let* ((temp-file (flymake-init-create-temp-buffer-copy
 'flymake-create-temp-inplace))
 (local-file (file-relative-name
 temp-file
 (file-name-directory buffer-file-name))))
 (list "pyflakes" (list local-file))))

 (add-to-list 'flymake-allowed-file-name-masks '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'python-mode-hook 
      (lambda () 
        (unless (eq buffer-file-name nil) (flymake-mode 1)) ;dont invoke flymake on temporary buffers for the interpreter
        (local-set-key [f2] 'flymake-goto-prev-error)
        (local-set-key [f3] 'flymake-goto-next-error)
        ))

;; Uniquify
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified

; don't muck with special buffers (or Gnus mail buffers)
(setq uniquify-ignore-buffers-re "^\\*")

;; sudo apt-get install python-mode
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
