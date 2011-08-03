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
