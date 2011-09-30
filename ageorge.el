(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 93 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

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

;; ENSIME
; ageorge@wud-ageorge01:~/foss$ git clone https://github.com/aemoncannon/ensime.git
; ...
; ageorge@wud-ageorge01:~/foss$ cd ensime/
; ageorge@wud-ageorge01:~/foss/ensime (scala-2.9)$ git rev-parse HEAD
; 400e9933411eec610c8f689a2f473453c143464d
;; Load the ensime lisp code...
(add-to-list 'load-path (concat (getenv "HOME") "/foss/ensime/src/main/elisp")) ; new ENSIME dists
(add-to-list 'load-path (concat (getenv "HOME") "/foss/ensime/elisp")) ; jjoyce-hacked old ensime dist
(require 'ensime)
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; MINI HOWTO: 
;; Open .scala file. M-x ensime (once per project)

