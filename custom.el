; Custom theme
(load-theme 'ample-zen t)

; Enable Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

; Full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; Go
(require 'go-mode)
(require 'go-snippets)
(require 'govet)
(require 'golint)
(require 'go-errcheck)
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(require 'flycheck-gometalinter)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))

; Evil Vim emulation package
(require 'evil)
(global-set-key (kbd "C-*") 'evil-search-symbol-forward)
(global-set-key (kbd "C-#") 'evil-search-symbol-backward)

; Python jedi autocomplete
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

; Company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

; Lua
(require 'company-lua)

; Neotree
(require 'neotree)
(global-set-key (kbd "C-c n") 'neotree-toggle)
(setq neo-smart-open t)

;(defun neotree-project-dir ()
;    "Open NeoTree using the git root."
;    (interactive)
;    (let ((project-dir (ffip-project-root))
;          (file-name (buffer-file-name)))
;      (if project-dir
;          (progn
;            (neotree-dir project-dir)
;            (neotree-find file-name))
;        (message "Could not find git project root."))))
;(global-set-key (kbd "C-c p") 'neotree-project-dir)

;; Indent new lines
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Helm find file
(global-set-key (kbd "C-x f") 'helm-find)

;; Helm grep ag
(global-set-key (kbd "C-x g") 'helm-do-grep-ag)

;; Git-gutter+
(global-git-gutter+-mode)

(setq i-search-allow-scroll t)

(eval-after-load 'git-gutter+
  '(progn
       ;;; Jump between hunks
     (define-key git-gutter+-mode-map (kbd "C-x n") 'git-gutter+-next-hunk)
     (define-key git-gutter+-mode-map (kbd "C-x p") 'git-gutter+-previous-hunk)

       ;;; Act on hunks
     (define-key git-gutter+-mode-map (kbd "C-x v =") 'git-gutter+-show-hunk)
     (define-key git-gutter+-mode-map (kbd "C-x r") 'git-gutter+-revert-hunks)
     ;; Stage hunk at point.
     ;; If region is active, stage all hunk lines within the region.
     (define-key git-gutter+-mode-map (kbd "C-x t") 'git-gutter+-stage-hunks)
     (define-key git-gutter+-mode-map (kbd "C-x c") 'git-gutter+-commit)
     (define-key git-gutter+-mode-map (kbd "C-x C") 'git-gutter+-stage-and-commit)
     (define-key git-gutter+-mode-map (kbd "C-x C-y") 'git-gutter+-stage-and-commit-whole-buffer)
     (define-key git-gutter+-mode-map (kbd "C-x U") 'git-gutter+-unstage-whole-buffer)))

;; Enable electric pair
(electric-pair-mode)

;; Add lin num
;(linum-mode)

;; Customization
;(global-set-key (kbd "C-w") 'backward-kill-word)

;; C support
;(require 'setup-helm)
;(require 'setup-helm-gtags)

;; To use company-mode with Clang, add this configuration
;(setq company-backends (delete 'company-semantic company-backends))
;(define-key c-mode-map  [(tab)] 'company-complete)
;(define-key c++-mode-map  [(tab)] 'company-complete)

;; Enable helm-follow-mode by default
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9527feeeec43970b1d725bdc04e97eb2b03b15be982ac50089ad223d3c6f2920" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
