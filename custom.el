; Custom theme
(load-theme 'ample-zen t)

; Enable Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

; Full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; Go autocomplete
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

; Python jedi autocomplete
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

; Lua
(require 'company)
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

;; Enable helm-follow-mode by default
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "9527feeeec43970b1d725bdc04e97eb2b03b15be982ac50089ad223d3c6f2920" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(package-hidden-regexps (quote ("\\`git-gutter")))
 '(package-selected-packages
   (quote
    (yesql-ghosts whitespace-cleanup-mode wgrep visual-regexp string-edit smartparens ruby-tools ruby-additional rubocop restclient prodigy paredit neotree move-text markdown-mode magit luarocks jedi inflections ido-vertical-mode ido-at-point hydra htmlize highlight-escape-sequences helm-ag guide-key golint go-tag go-snippets go-impl go-gopath go-gen-test go-errcheck go-eldoc go-autocomplete go-add-tags go flycheck-pyflakes flycheck-pycheckers flycheck-pos-tip flx-ido fill-column-indicator exec-path-from-shell elisp-slime-nav edn dockerfile-mode dired-details company-lua beginend ample-zen-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
