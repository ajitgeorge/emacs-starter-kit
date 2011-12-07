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

;; python

; sudo apt-get install python-ropemacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")   
(setq ropemacs-enable-autoimport t)

;; anything
(require 'anything-config)
(require 'anything-match-plugin)
(global-set-key "\C-ca" 'anything)
(global-set-key "\C-ce" 'anything-for-files)

